import os
import mysql.connector as mysql
def getn():
    f = open("archivo.txt", "r")
    b = open("things.txt", "w")
    while(True):
        linea = f.readline()
        if not linea.find("PORT"):
            linea = f.readline()
            while(linea.find('\n')):
                b.write(linea)
                linea = f.readline()
                if (len(linea)==0):
                    break
        if not linea:
            break
    f.close()
    b.close()

def insertar(pc):
    f = open ("things.txt","r")
    while(True):
        c=0
        c1=1
        port=""
        state=""
        service=""
        linea = f.readline()
        if(len(linea)==0):
            linea = f.readline()
        else:
            while (c1==1 and linea[c]!=' '):
                port+=linea[c]
                c+=1
            print(port)
            c1+=1
            while (linea[c]==' '):
                c+=1
            while (c1==2 and linea[c]!=' '):
                state+=linea[c]
                c+=1
            print(state)
            c1+=1
            while (linea[c]==' '):
                c+=1
            while (c1==3 and c<len(linea)):
                service+=linea[c]
                c+=1
            print(service)
            c1+=1
        conexion = mysql.connect( host='localhost', user= 'root', passwd='', db='puertos' )
        operacion = conexion.cursor()
        if(len(port)!=0 and len(state)!=0 and len(service)!=0):
            operacion.execute( "INSERT INTO datos (IP,port, state, service) VALUES (\""+pc+"\",\""+port+"\",\""+state+"\",\""+service+"\")" )
            conexion.commit()
        if not linea:
            break



pc="200.33.171.66"
arch="archivo.txt"
os.system("nmap -oN "+arch+' '+pc)
getn()
insertar(pc)