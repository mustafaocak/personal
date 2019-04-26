#Set the Graphite carbon server location and port number
$carbonServer = ""
$carbonServerPort = 2023
#Get Unix epoch Time
$epochTime=[int]((get-date (get-date).ToUniversalTime() -UFormat "%s").split(",")[0])
 
#Putting some value here that I want to send
$value = 50000
 
#Build our metric string in the format required by Graphite's carbon-cache service.
$metric = ("test2.muo.demo.temp6 " + $value + " " + $epochTime)
write-output $metric
 
#Stream results to the Carbon server
$socket = New-Object System.Net.Sockets.TCPClient 
$socket.connect($carbonServer, $carbonServerPort) 
$stream = $socket.GetStream() 
$writer = new-object System.IO.StreamWriter($stream)
#Write out metric to the stream.
$writer.WriteLine($metric)
$writer.Flush() #Flush and write our metrics.
$writer.Close() 
$stream.Close()
