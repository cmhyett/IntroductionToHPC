import threading;
from time import sleep;
import numpy as np;

def helloWorld():
    sleep(np.random.random());
    print("Hello world! This is {}"
          .format(threading.current_thread().name))

if __name__ == "__main__":
    for i in range(6):
        t = threading.Thread(
            target=helloWorld,args=[]);
        t.start()

# Hello world! This is Thread-4
# Hello world! This is Thread-1
# Hello world! This is Thread-6
# Hello world! This is Thread-2
# Hello world! This is Thread-5
# Hello world! This is Thread-3
