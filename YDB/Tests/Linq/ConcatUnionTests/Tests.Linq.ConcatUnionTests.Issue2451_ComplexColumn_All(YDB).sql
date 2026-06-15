-- YDB Ydb

SELECT
	p.FirstName as FirstName
FROM
	Person p
UNION ALL
SELECT
	p_1.FirstName || '/'u || p_1.LastName as FirstName
FROM
	Person p_1

-- YDB Ydb

SELECT
	p.FirstName || '/'u || p.LastName as FirstName
FROM
	Person p
UNION ALL
SELECT
	p_1.FirstName as FirstName
FROM
	Person p_1

