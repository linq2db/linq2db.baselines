-- YDB Ydb

SELECT
	p.PersonID as ID,
	p.MiddleName as iD_1,
	p.FirstName as id_2,
	p.LastName as Id_3
FROM
	Person p
WHERE
	p.PersonID = 1
LIMIT 2

