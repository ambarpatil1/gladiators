import { LightningElement } from 'lwc';
import { getMessage } from './helpers/helper1';
import { formatMessage } from './helpers/helper2';

export default class MyComponent extends LightningElement {
    message = '';

    handleClick() {
        // Using helper1 to get a base message testsai Newjan7
        let baseMessage = getMessage();
        //Test124

        // Using helper2 to format the message testsai Newjan7
        this.message = formatMessage(baseMessage);
        //Test124
    }
}