module.exports = {
  // Корневая директория проекта
  rootDir: '.',

  // Пути, где Jest будет искать файлы с тестами
  testMatch: ['<rootDir>/test/**/*.spec.(js|jsx|ts|tsx)'],

  // Игнорирование папок при поиске файлов с тестами
  testPathIgnorePatterns: ['/node_modules/'],

  // Покрытие кода тестами
  collectCoverage: true,
  coverageReporters: ['html', 'text-summary'],

  // Конфигурация для TypeScript
  transform: {
    '^.+\\.(ts|tsx)$': 'ts-jest',
  },
  moduleFileExtensions: ['ts', 'tsx', 'js', 'jsx', 'json', 'node'],

  // Конфигурация для Code Coverage (покрытие кода тестами)
  collectCoverageFrom: [
    '<rootDir>/test/**/*.{js,jsx,ts,tsx}',
    '!<rootDir>/node_modules/',
    '!<rootDir>/path/to/exclude/',
  ],
};
