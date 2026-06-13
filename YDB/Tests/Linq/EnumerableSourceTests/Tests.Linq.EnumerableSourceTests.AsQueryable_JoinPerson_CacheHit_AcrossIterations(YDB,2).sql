-- YDB Ydb
DECLARE $Id Int32
SET     $Id = 20
DECLARE $Id_1 Int32
SET     $Id_1 = 21
DECLARE $Id_2 Int32
SET     $Id_2 = 22

SELECT
	p.FirstName as FirstName,
	p.PersonID as ID,
	p.LastName as LastName,
	p.MiddleName as MiddleName,
	p.Gender as Gender
FROM
	Person p
		INNER JOIN (VALUES
			($Id), ($Id_1), ($Id_2)
		) r(Id) ON p.PersonID = r.Id

