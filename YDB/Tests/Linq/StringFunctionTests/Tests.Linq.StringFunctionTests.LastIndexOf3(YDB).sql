-- YDB Ydb
SELECT
	p.PersonID as PersonID,
	'123'u || p.FirstName || '0123451234'u as FirstName
FROM
	Person p
WHERE
	p.PersonID = 1 AND 1 = IF(Unicode::Reverse(Unicode::Substring(('123'u || p.FirstName || '0123451234'u), 6 - 1, 6)) IS NULL OR '321'u IS NULL, NULL, Coalesce(CAST(Unicode::Find(Unicode::Reverse(Unicode::Substring(('123'u || p.FirstName || '0123451234'u), 6 - 1, 6)), Coalesce('321'u, ''u)) AS Int32) + 1, 0)) AND
	IF(Unicode::Substring(('123'u || p.FirstName || '0123451234'u), 0, 11) IS NULL OR '123'u IS NULL OR 6 IS NULL, NULL, Coalesce(CAST(Unicode::Find(Unicode::Substring(('123'u || p.FirstName || '0123451234'u), 0, 11), Coalesce('123'u, ''u), 6 - 1) AS Int32) + 1, 0)) <> 0

