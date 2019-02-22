# Example app using Vumi + Fake SMSC

[userguide](https://vumi.readthedocs.io/en/latest/first-smpp-bind.html)

## Running

1. Clone the project

2. Build and run the app

```
$sudo docker-compose -f vumi+fake-smsc.yaml up --build
```

3. Test sending a message from the smsc,

    * On the browser navigate to the url 'localhost:8888', this should open the fake smsc index page
    
    * Go to “Inject an MO message”.
    
    * Type a message, it doesn’t matter what destination_addr you chose, 
      all incoming messages will be routed using the SMPP Transport’s transport_name to the application subscribed to those messages.
     
    * Change the `data_coding` attribute from 0 to 1
    
    * submit the message
     
     * The app will echo the submitted message
