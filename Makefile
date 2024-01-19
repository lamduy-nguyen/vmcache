vmcache: vmcache.cpp tpcc/*pp
	g++ -DNDEBUG -O3 -std=c++20 -g -fnon-call-exceptions -fasynchronous-unwind-tables vmcache.cpp -o vmcache -laio -latomic -ltbb

debug: vmcache.cpp tpcc/*pp
	g++ -DDEBUG -O0 -std=c++20 -g -fnon-call-exceptions -fasynchronous-unwind-tables vmcache.cpp -o vmcache -laio -latomic -ltbb

clean:
	rm vmcache
