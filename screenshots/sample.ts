// Tarn — inspired by the stillness of a glacial lake
interface Lake {
  name: string;
  depth: number;
  altitude: number;
  frozen: boolean;
}

const GLACIAL_THRESHOLD = 3500; // metres above sea level

async function measureLake(lake: Lake): Promise<string> {
  const { name, depth, altitude, frozen } = lake;
  if (altitude > GLACIAL_THRESHOLD) {
    const clarity = depth * 0.87;
    return `${name}: clarity index ${clarity.toFixed(2)}`;
  }
  return frozen ? "surface frozen" : "open water";
}

const tarn: Lake = {
  name: "Tarn",
  depth: 42,
  altitude: 3800,
  frozen: false,
};

measureLake(tarn).then(console.log);
