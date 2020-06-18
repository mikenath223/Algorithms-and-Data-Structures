PROBLEM STATEMENT:

A website domain like "discuss.leetcode.com" consists of various subdomains. 
At the top level, we have "com", at the next level, we have "leetcode.com", 
and at the lowest level, "discuss.leetcode.com". When we visit a domain like 
"discuss.leetcode.com", we will also visit the parent domains "leetcode.com" and "com" implicitly.

Now, call a "count-paired domain" to be a count (representing the number of visits this domain received), 
followed by a space, followed by the address. An example of a count-paired domain might be "9001 discuss.leetcode.com".

We are given a list cpdomains of count-paired domains. We would like a list of count-paired domains, (in the same format as the input, 
  and in any order), that explicitly counts the number of visits to each subdomain

TEST CASE:

Input: 
["9001 discuss.leetcode.com"]
Output: 
["9001 discuss.leetcode.com", "9001 leetcode.com", "9001 com"]
Explanation: 
We only have one website domain: "discuss.leetcode.com". As discussed above,
the subdomain "leetcode.com" and "com" will also be visited. So they will all be visited 9001 times.

MY SOLUTION:

# @param {String[]} cpdomains
# @return {String[]}
def subdomain_visits(cpdomains)
  hash = Hash.new
  cpdomains.each do |s|
    num, dom = s.split(' ')
    sub = dom.split('.')
    (sub.length).times do |it|
      subdomain = sub[it..-1].join(".")
      hash[subdomain] = hash.fetch(subdomain, 0) + num.to_i
    end
  end
  p hash
  arr = []
  hash.each do |k, v|
    arr << "#{v} #{k}"
  end
  arr
end

#// [mail, com]...[yahoo, com] ,[wiki, org]

