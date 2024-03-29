
//
// This example shows a simple TCP echo client.
// The client will send "Hello World" to the server on port 6789 and log
// what has been received from the server.
//

//  Request permission to connect to server at address 127.0.0.1 on port
//  6789

navigator.tcpPermission.requestPermission({remoteAddress:"127.0.0.1", remotePort:6789}).then(
  () => {
    // Permission was granted
    // Create a new TCP client socket and connect to remote host
    var mySocket = new TCPSocket("127.0.0.1", 6789);

    // Send data to server
    mySocket.writeable.write("Hello World").then(
        () => {

            // Data sent sucessfully, wait for response
            console.log("Data has been sent to server");
            mySocket.readable.getReader().read().then(
                ({ value, done }) => {
                    if (!done) {
                        // Response received, log it:
                        console.log("Data received from server:" + value);
                    }

                    // Close the TCP connection
                    mySocket.close();
                }
            );
        },
        e => console.error("Sending error: ", e)
    );

    // Signal that we won't be writing any more and can close the write half of the connection.
    mySocket.halfClose();

    // Log result of TCP connection attempt.
    mySocket.opened.then(
      () => {
        console.log("TCP connection established sucessfully");
      },
      e =>console.error("TCP connection setup failed due to error: ", e)
    );

    // Handle TCP connection closed, either as a result of the webapp
    // calling mySocket.close() or the other side closed the TCP
    // connection or an error causing the TCP connection to be closed.
    mySocket.closed.then(
      () => {
         console.log("TCP socket has been cleanly closed");
      },
      e => console.error("TCP socket closed due to error: ", e)
    );
  },
  e => console.error("Connection to 127.0.0.1 on port 6789 was denied due to error: ", e)
);
