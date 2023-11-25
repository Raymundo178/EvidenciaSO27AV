from difflib import SequenceMatcher
import subprocess
import re
import os

def run_cmd(cmd, get_output=True, timeout=45, stop_on_error=True):
        "Ejecute la entrada y salida de registro de cmd"
        output = ""
        try:
            if get_output:
                p = subprocess.Popen(cmd, stdout=subprocess.PIPE, stderr=subprocess.STDOUT, universal_newlines=True)
                output, err = p.communicate(timeout=timeout)
                rc =p.returncode
            else:
                result = subprocess.check_call(cmd, stderr=subprocess.STDOUT, shell=True, timeout=timeout)
        except subprocess.CalledProcessError as e:
            if stop_on_error:
                msg = 'Fallo sudo_cmd: %s' % (e.returncode, str(e))
        except Exception as e:
            if stop_on_error:
                msg = 'Fallo sudo_cmd: %s' %  str(e)    
        return output

def check(test_str):
    pattern = r'[^\.acfgdlst*\-\s]'
    if re.search(pattern, test_str):
        print('Comando invalido %r, vuelve a intentarlo, recuerda que solo se permiten estos caracteres [.cdlsat*\- ]\n' % (test_str, ))
        print('Codigo incorrecto')
        
    else:
        try:
            output = run_cmd(cmd, get_output=True, stop_on_error=True)
            print (output)
        except OSError:
            print ('Error Desconocido.')
            
while True:
    try:
        s =input('YH >')
    except:
        break
    
    try:
        
        cmd = s
        check(cmd)
    except OSError:
        print ('Error desconocido.')