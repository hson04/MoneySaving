"use strict";
Object.defineProperty(exports, "__esModule", { value: true });
const config = {
    preset: 'ts-jest',
    testEnvironment: 'node',
    verbose: true,
    coverageDirectory: 'coverage',
    collectCoverage: true,
    testPathIgnorePatterns: ['/node_modules/'],
    transform: {
        '^.+\\.ts?$': 'ts-jest'
    },
    // so it should be inside test
    testMatch: ['<rootDir>/src/**/test/*.ts'],
    // the second one is dont check files in test folder
    collectCoverageFrom: ['src/**/*.ts', '!src/**/test/*.ts?(x)', '!**/node_modules/**'],
    coverageThreshold: {
        global: {
            branches: 1,
            functions: 1,
            lines: 1,
            statements: 1
        }
    },
    coverageReporters: ['text-summary', 'lcov'],
    moduleNameMapper: {
        '~/(.*)': ['<rootDir>/src/$1'],
        '~auth/(.*)': ['<rootDir>/src/features/auth/$1']
    }
};
exports.default = config;
//# sourceMappingURL=jest.config.js.map