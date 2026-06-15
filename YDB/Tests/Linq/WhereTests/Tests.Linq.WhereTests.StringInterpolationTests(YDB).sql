-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Person p
WHERE
	(p.LastName || ', 'u || p.FirstName) = (p.LastName || ', 'u || p.FirstName) AND
	('<'u || p.LastName || ', 'u || p.FirstName || '>'u) = ('<'u || p.LastName || ', 'u || p.FirstName || '>'u) AND
	('<'u || p.LastName || p.FirstName || '>'u) = ('<'u || p.LastName || p.FirstName || '>'u) AND
	('<{p.LastName}, 'u || p.FirstName || ' {'u || p.LastName || '}>'u) = ('<{p.LastName}, 'u || p.FirstName || ' {'u || p.LastName || '}>'u) AND
	('{}'u || p.LastName) = ('{}'u || p.LastName)

-- YDB Ydb

SELECT
	COUNT(*) as Count_1
FROM
	Person t1

