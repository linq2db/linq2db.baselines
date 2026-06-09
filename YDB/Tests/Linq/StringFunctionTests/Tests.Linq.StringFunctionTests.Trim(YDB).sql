-- YDB Ydb

SELECT
	pp.PersonID as ID,
	'  'u || pp.FirstName || ' 'u as Name
FROM
	Person pp
WHERE
	pp.PersonID = 1 AND Unicode::Strip('  'u || pp.FirstName || ' 'u) = 'John'u

