import { greet } from './main'

test('SECOND the data is peanut butter', () => {
  expect(1).toBe(1)
});

test('SECOND greeting', () => {
  expect(greet('Foo')).toBe('Hello Foo')
});
