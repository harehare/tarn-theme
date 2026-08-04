#!/usr/bin/env bash
# Package the Tarn UI theme as an installable JetBrains plugin zip.
# No Gradle or JDK needed — a theme plugin has no compiled code.
set -euo pipefail

cd "$(dirname "$0")"

PLUGIN_ID="tarn-theme"
BUILD_DIR="build"
JAR_DIR="$BUILD_DIR/jar"
DIST_DIR="$BUILD_DIR/dist"

version=$(sed -n 's/.*<version>\(.*\)<\/version>.*/\1/p' plugin.xml | head -1)
if [ -z "$version" ]; then
  echo "error: could not read <version> from plugin.xml" >&2
  exit 1
fi
zip_name="$PLUGIN_ID-$version.zip"

if command -v python3 >/dev/null 2>&1; then
  python3 -c 'import json,sys; json.load(open("tarn.theme.json"))' \
    || { echo "error: tarn.theme.json is not valid JSON" >&2; exit 1; }
fi

rm -rf "$BUILD_DIR" "$zip_name"
mkdir -p "$JAR_DIR/META-INF" "$JAR_DIR/themes" "$DIST_DIR/$PLUGIN_ID/lib"

cp plugin.xml "$JAR_DIR/META-INF/plugin.xml"
cp tarn.theme.json "$JAR_DIR/themes/tarn.theme.json"
# Renamed, not a typo: the platform ignores an editorScheme path ending in
# .icls. Same file format, so the repo keeps the importable .icls name.
cp tarn.icls "$JAR_DIR/themes/tarn.xml"

(cd "$JAR_DIR" && zip -q -r -X "../dist/$PLUGIN_ID/lib/$PLUGIN_ID.jar" META-INF themes)
(cd "$DIST_DIR" && zip -q -r -X "../../$zip_name" "$PLUGIN_ID")

echo "built $zip_name"
