-- YDB Ydb

SELECT
	a_PersonDoctor.FirstName as FirstName
FROM
	Doctor d
		INNER JOIN Person a_PersonDoctor ON d.PersonID = a_PersonDoctor.PersonID

