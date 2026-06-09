-- YDB Ydb

SELECT
	p.PersonID as ID,
	CAST(Re2::Replace('[]+$'u)(CAST((p.FirstName || '1'u) AS String?), '') AS Utf8?) as FirstName
FROM
	Person p

