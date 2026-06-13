-- YDB Ydb

SELECT
	p.PersonID as ID,
	'123'u || p.FirstName || '0123451234'u as FirstName
FROM
	Person p
WHERE
	p.PersonID = 1 AND 1 = Unicode::Find(Unicode::Reverse(Unicode::Substring(('123'u || p.FirstName || '0123451234'u), 6 - 1, 6)), '321'u) + 1 AND
	Unicode::Find(Unicode::Substring(('123'u || p.FirstName || '0123451234'u), 0, 11), '123'u, 6) + 1 <> 0

