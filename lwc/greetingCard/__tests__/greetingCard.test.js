import { createElement } from 'lwc';
import GreetingCard from 'c/greetingCard';

describe('c-greeting-card', () => {
    afterEach(() => {
        while (document.body.firstChild) {
            document.body.removeChild(document.body.firstChild);
        }
    });

    it('falls back to a generic greeting before the record loads', () => {
        const element = createElement('c-greeting-card', { is: GreetingCard });
        document.body.appendChild(element);
        expect(element.shadowRoot.querySelector('p').textContent).toBe('Hello, there!');
    });

    it('shows a spinner until the greeting arrives', () => {
        const element = createElement('c-greeting-card', { is: GreetingCard });
        document.body.appendChild(element);
        expect(element.shadowRoot.querySelector('lightning-spinner')).not.toBeNull();
    });
});
