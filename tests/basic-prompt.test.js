import { expect, test, describe, vi } from 'vitest'

vi.mock('../prompt.js', () => {
    return {
        prompt: (question) => {
            if (question === "What is your name? ") {
                return "John"
            } else if (question === "What is your age? ") {
                return "18"
            }
        }
    }
})

describe('basic prompt', async () => {

    const spy = vi.spyOn(console, 'log')

    await import('../tasks/basic-prompt.js')

    const calls = spy.calls.flat()

    test('first loop', () => {
        expect(calls[0]).toEqual("Hello John, in 2 years you will be 20 years old.")
    })
})