-- YDB Ydb
SELECT
	p.PersonID as PersonID,
	'123'u || p.FirstName || '012345'u as FirstName
FROM
	Person p
WHERE
	p.PersonID = 1 AND Unwrap(CAST(Unicode::GetLength('123'u || p.FirstName || '012345'u) AS Int32)) - (Unicode::Find(Unicode::Reverse(Unicode::Substring(('123'u || p.FirstName || '012345'u), 6 - 1, (Unwrap(CAST(Unicode::GetLength('123'u || p.FirstName || '012345'u) AS Int32)) - 5))), '321'u) + 1) = 10 AND
	Unicode::Find(('123'u || p.FirstName || '012345'u), '123'u, 6) + 1 <> 0

