import sys

with open("sample_code_snippet.json") as f:
    sample = f.read()


def gen_code_snippet(line):
    line = line.strip().split(" ")
    if len(line) >= 2:
        code, symbol = line[:2]
        code = code.replace("\\", "\\\\")
        code = code.replace("\"", "\\\"")
        priorty = line[2] if len(line) >= 3 else None

        return sample.format(code=code, symbol=symbol, priorty=priorty)

    return None


def gen_code_snippets(file):
    for line in file.readlines():
        code_snippet = gen_code_snippet(line)
        if code_snippet != None:
            yield code_snippet

print("{")
print(*gen_code_snippets(sys.stdin), sep=",\n")
print("}")