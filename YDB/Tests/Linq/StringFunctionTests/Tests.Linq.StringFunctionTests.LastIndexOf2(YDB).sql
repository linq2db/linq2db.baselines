-- YDB Ydb
SELECT
	p.PersonID as PersonID,
	'123'u || p.FirstName || '012345'u as FirstName
FROM
	Person p
WHERE
	p.PersonID = 1 AND Unwrap(CAST(Unicode::GetLength('123'u || p.FirstName || '012345'u) AS Int32)) - IF(Unicode::Reverse(Unicode::Substring(('123'u || p.FirstName || '012345'u), 6 - 1, (Unwrap(CAST(Unicode::GetLength('123'u || p.FirstName || '012345'u) AS Int32)) - 5))) IS NULL OR '321'u IS NULL, NULL, Coalesce(CAST(Unicode::Find(Unicode::Reverse(Unicode::Substring(('123'u || p.FirstName || '012345'u), 6 - 1, (Unwrap(CAST(Unicode::GetLength('123'u || p.FirstName || '012345'u) AS Int32)) - 5))), Coalesce('321'u, ''u)) AS Int32) + 1, 0)) = 10 AND
	IF(('123'u || p.FirstName || '012345'u) IS NULL OR '123'u IS NULL OR 6 IS NULL, NULL, Coalesce(CAST(Unicode::Find(('123'u || p.FirstName || '012345'u), Coalesce('123'u, ''u), 6 - 1) AS Int32) + 1, 0)) <> 0

