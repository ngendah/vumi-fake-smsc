# Example app using Vumi + Fake SMSC

[![Build Status](https://travis-ci.org/ngendah/vumi-fake-smsc.svg?branch=master)](https://travis-ci.org/ngendah/vumi-fake-smsc)

[userguide](https://vumi.readthedocs.io/en/latest)

## Running

1. Clone the project

2. Build and run the app

```
$docker-compose -f vumi+fake-smsc.yaml up --build
```

3. Test sending a message from the smsc,

    * On the browser navigate to the url `localhost:9000`, this should open the fake smsc index page
    
    * Go to “Inject an MO message”.
    
    * Type a message, it doesn’t matter what destination_addr you chose, 
      all incoming messages will be routed using the SMPP Transport’s transport_name to the application subscribed to those messages.
     
    * Change the `data_coding` attribute from 0 to 1
    
    * submit the message
     
     * The app should echo, on the CLI, the submitted message

## Debugging tools

1. The CLI

2. Rabbitmq management console available at `localhost:9005`

3. Redis database browser available at `localhost:9010`