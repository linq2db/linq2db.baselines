-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 10
DECLARE $Id_1 Int32
SET     $Id_1 = 11

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
		INNER JOIN (VALUES
			($Id), ($Id_1)
		) r(Id) ON p.PersonID = r.Id

