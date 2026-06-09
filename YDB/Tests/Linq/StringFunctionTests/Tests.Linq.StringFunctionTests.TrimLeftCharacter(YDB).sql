-- YDB Ydb

SELECT
	pp.PersonID as ID,
	'  'u || pp.FirstName || ' 'u as Name
FROM
	Person pp
WHERE
	pp.PersonID = 1 AND CAST(Re2::Replace('^[ ]+'u)(CAST(('  'u || pp.FirstName || ' 'u) AS String?), '') AS Utf8?) = 'John 'u

