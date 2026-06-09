-- YDB Ydb

SELECT
	p2.PersonID as ID,
	CAST(Re2::Replace('[]+$'u)(CAST((p2.FirstName || ''u) AS String?), '') AS Utf8?) as FirstName
FROM
	Person p2
WHERE
	p2.PersonID = 1

