-- YDB Ydb

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.PersonID as IDNullable,
	p.LastName as LastName,
	p.FirstName || ' 'u || p.LastName as FullName
FROM
	Person p

