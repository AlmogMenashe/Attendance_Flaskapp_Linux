import pysftp
 
local_path = "./"
remote_path = "/var/tmp/csv_files/"

with pysftp.Connection(host='185.164.16.144', username='almogm', password='********') as sftp:
    for file in sftp.listdir_attr(remote_path):
        print(file)
    #download files
    sftp.get_r(remote_path, local_path,preserve_mtime=True)
    #upload files    
    #sftp.put(local_path, remote_path)
    #sftp.chmod(local_path,644) 

