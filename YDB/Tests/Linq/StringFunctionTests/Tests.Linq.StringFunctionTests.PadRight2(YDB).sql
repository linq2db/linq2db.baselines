-- YDB Ydb

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
WHERE
	(CAST(String::RightPad(p.FirstName, 6, '*'u) AS Utf8) || '123'u) = 'John**123'u AND
	p.PersonID = 1

