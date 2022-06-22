#!/usr/bin/bash
# by nu11secur1ty
echo "Give a intiger"

read chislo

cat << 'EOF' > izrud.js
const {Resolver} = require('dns');
const resolver = new Resolver( {timeout: 3000} );
const discoveredSites = [];
 
function lookup(domain) {
	resolver.resolve(domain, err => {
		if (err)
			console.log(domain + " doesn't exist");
		else {
			console.log(domain + ' FOUND! Possible phishing, domain');
			discoveredSites.push('https://www.' + domain + ' ' + 'https://' + domain);
		} 
	});
}


for (let i = 0; i <= kur; i++) {
	lookup(i + 'example.com');
	lookup('example' + i + '.com');
}

process.on('beforeExit', () => console.log('\n\nPossible phishing domains! Please check on your browser!:\n' + discoveredSites.join('\n')) );

EOF
	sed -i "s/kur/$chislo/g" izrud.js
	node izrud.js > result.txt
		echo "Done"
	exit 0;
