-- YDB Ydb
SELECT
	p.PersonID as PersonID
FROM
	Person p
WHERE
	'M'u = p.Gender

