# uRequest extension
# + Socket timeout
# + HTTP Redirection
# + Tag Parsing
# David Tougaw & Ben Compton


import usocket
# garbage collector
import gc

class Response:

    def __init__(self, f):
        self.raw = f
        self.encoding = "utf-8"
        self._cached = None

    def close(self):
        if self.raw:
            self.raw.close()
            self.raw = None
        self._cached = None

    @property
    def content(self):
        if self._cached is None:
            try:
                self._cached = self.raw.read()
            finally:
                self.raw.close()
                self.raw = None
        return self._cached

    @property
    def text(self):
        return str(self.content, self.encoding)

    def json(self):
        import ujson
        return ujson.loads(self.content)

<<<<<<< HEAD

def request(method, url, data=None, json=None, headers={}, stream=None, timeout=0.5):
=======
def redirect(method, url, data=None, json=None, headers={}, stream=None, timeout=0.5, parseSplashPage=True):
    
>>>>>>> ce9a24d3730cedb347c90fdd8484b00b9e3a9241
    try:
        proto, dummy, host, path = url.split("/", 3)
    except ValueError:
        proto, dummy, host = url.split("/", 2)
        path = ""
    if proto == "http:":
        port = 80
    elif proto == "https:":
        import ussl
        port = 443
    else:
        raise ValueError("Unsupported protocol: " + proto)

    if ":" in host:
        host, port = host.split(":", 1)
        port = int(port)

    ai = usocket.getaddrinfo(host, port, 0, usocket.SOCK_STREAM)

    ai = ai[0]

    s = usocket.socket(ai[0], ai[1], ai[2])
    # set timeout
    s.settimeout(timeout)
    try:
        s.connect(ai[-1])
        if proto == "https:":
            s = ussl.wrap_socket(s, server_hostname=host)
        s.write(b"%s /%s HTTP/1.0\r\n" % (method, path))
        if not "Host" in headers:
            s.write(b"Host: %s\r\n" % host)
        # Iterate over keys to avoid tuple alloc
        for k in headers:
            s.write(k)
            s.write(b": ")
            s.write(headers[k])
            s.write(b"\r\n")
        if json is not None:
            assert data is None
            import ujson
            data = ujson.dumps(json)
            s.write(b"Content-Type: application/json\r\n")
        if data:
            s.write(b"Content-Length: %d\r\n" % len(data))
        s.write(b"\r\n")
        if data:
            s.write(data)

        l = s.readline()
        print(l)
        l = l.split(None, 2)
        status = int(l[1])
        reason = ""
        if len(l) > 2:
            reason = l[2].rstrip()
        while True:
<<<<<<< HEAD
=======
            # splash page
>>>>>>> ce9a24d3730cedb347c90fdd8484b00b9e3a9241
            l = s.readline()
            if not l or l == b"\r\n":
                break
            print(l)
            if l.startswith(b"Transfer-Encoding:"):
                if b"chunked" in l:
                    raise ValueError("Unsupported " + l)
            elif l.startswith(b"Location:") and not 200 <= status <= 299:
<<<<<<< HEAD
                location = str(l[10:])[2:-5]
                print ("\n\n\n"+location+"\n\n\n")
                # need to get the method from the redirection
                return request('GET',location)
                # throw NotImplementedError("Redirects not yet supported")
=======
                raise OSError("Redirect of Redirect not allowed")
            #     location = str(l[10:])[2:-5]
            #     print ("\n\n\n"+location+"\n\n\n")
            #     # need to get the method from the redirection
            #     return request('GET',location)
    except OSError:
        s.close()
        raise

    if parseSplashPage:
        # read all bytes from socket
        r = s.read()
        # parse socket bytes
        a = []
        while r.find(b'<a') != -1:
            beg = r.find(b'<a')
            end = r.find(b'</a>')+4
            a.append(r[beg:end])
            r = r[end+1:]
        
        #free memory   
        del r
        gc.collect()

        b = [a[i][3:a[i].find(b'>')] for i in range(len(a))]
        return b
    else:
        resp = Response(s)
        resp.status_code = status
        resp.reason = reason
        return resp

def request(method, url, data=None, json=None, headers={}, stream=None, timeout=0.5):
    
    try:
        proto, dummy, host, path = url.split("/", 3)
    except ValueError:
        proto, dummy, host = url.split("/", 2)
        path = ""
    if proto == "http:":
        port = 80
    elif proto == "https:":
        import ussl
        port = 443
    else:
        raise ValueError("Unsupported protocol: " + proto)

    if ":" in host:
        host, port = host.split(":", 1)
        port = int(port)

    ai = usocket.getaddrinfo(host, port, 0, usocket.SOCK_STREAM)

    ai = ai[0]

    s = usocket.socket(ai[0], ai[1], ai[2])
    # set timeout
    s.settimeout(timeout)
    try:
        s.connect(ai[-1])
        if proto == "https:":
            s = ussl.wrap_socket(s, server_hostname=host)
        s.write(b"%s /%s HTTP/1.0\r\n" % (method, path))
        if not "Host" in headers:
            s.write(b"Host: %s\r\n" % host)
        # Iterate over keys to avoid tuple alloc
        for k in headers:
            s.write(k)
            s.write(b": ")
            s.write(headers[k])
            s.write(b"\r\n")
        if json is not None:
            assert data is None
            import ujson
            data = ujson.dumps(json)
            s.write(b"Content-Type: application/json\r\n")
        if data:
            s.write(b"Content-Length: %d\r\n" % len(data))
        s.write(b"\r\n")
        if data:
            s.write(data)

        l = s.readline()
        #print(l)
        l = l.split(None, 2)
        status = int(l[1])
        reason = ""
        if len(l) > 2:
            reason = l[2].rstrip()
        while True:
            l = s.readline()
            if not l or l == b"\r\n":
                break
            #print(l)
            if l.startswith(b"Transfer-Encoding:"):
                if b"chunked" in l:
                    raise ValueError("Unsupported " + l)
            elif l.startswith(b"Location:") and not 200 <= status <= 299:
                location = str(l[10:])[2:-5]
                #print ("\n\n\n"+location+"\n\n\n")
                # need to get the method from the redirection
                return redirect('GET',location)
>>>>>>> ce9a24d3730cedb347c90fdd8484b00b9e3a9241
    except OSError:
        s.close()
        raise

    resp = Response(s)
    resp.status_code = status
    resp.reason = reason
    return resp


def head(url, **kw):
    return request("HEAD", url, **kw)

def get(url, **kw):
    return request("GET", url, **kw)

def post(url, **kw):
    return request("POST", url, **kw)

def put(url, **kw):
    return request("PUT", url, **kw)

def patch(url, **kw):
    return request("PATCH", url, **kw)

def delete(url, **kw):
<<<<<<< HEAD
    return request("DELETE", url, **kw)
=======
    return request("DELETE", url, **kw)

# parser byte by byte
def parse(r):
    founds = []
    _TAG = "<a"
    _temp = ""
    start = False
    # go through every byte
    for i in range(len(r)):
        if r[i:i+1] == ">":
            _temp += r[i:i+1]
            founds.append(_temp)
            _temp = ""
            start = False
            # startTag found
        elif len(_TAG) == len(_temp) and (_temp == _TAG):
            start = True
        elif len(_temp) > len(_TAG) and not start:
            _temp = ""
        elif start:
            _temp += r[i:i+1]

    return founds

>>>>>>> ce9a24d3730cedb347c90fdd8484b00b9e3a9241
