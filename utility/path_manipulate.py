import os
def expandabspath(path):
    res = path
    if not os.path.isabs(res):
        res = os.path.abspath(res)
    res = os.path.expandvars(res)
    res = os.path.expanduser(res)
    return res

def rel2abspath(start, rel):
    if not os.path.isabs(rel):
        return os.path.join(start, rel)
    else:
        rel

def makedirs_with_check(dirs):
    if not os.path.exists(dirs):
        os.makedirs(dirs)