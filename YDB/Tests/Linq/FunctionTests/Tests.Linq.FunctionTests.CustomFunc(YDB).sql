-- YDB Ydb

SELECT
	p.LastName || ', 'u || p.FirstName as c1
FROM
	Person p
WHERE
	(p.LastName || ', 'u || p.FirstName) = 'Pupkin, John'u

