# 
# Solution to Project Euler problem 29
# by Project Nayuki
# 
# http://www.nayuki.io/page/project-euler-solutions
# https://github.com/nayuki/Project-Euler-solutions
# 


def compute():
	seen = set()
	for a in range(2, 101):
		for b in range(2, 101):
			seen.add(a ** b)
	return str(len(seen))


if __name__ == "__main__":
	print(compute())
