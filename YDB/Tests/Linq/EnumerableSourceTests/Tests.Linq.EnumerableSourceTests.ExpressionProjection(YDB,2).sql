-- YDB Ydb
DECLARE $ID Int32
SET     $ID = 3
DECLARE $ID_1 Int32
SET     $ID_1 = 4

SELECT
	n.ID as ID,
	n.FirstName as FirstName
FROM
	Person t1
		INNER JOIN (VALUES
			($ID,'Janet'u), ($ID_1,'Doe'u)
		) n(ID, FirstName) ON t1.PersonID = n.ID
ORDER BY
	n.ID

