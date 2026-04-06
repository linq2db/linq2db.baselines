-- DuckDB
DECLARE $ID  -- Int32
SET     $ID = 2
DECLARE $ID_1  -- Int32
SET     $ID_1 = 3

SELECT
	n.ID,
	n.FirstName
FROM
	Person t1
		INNER JOIN (VALUES
			(CAST($ID AS INTEGER),'Janet'), (CAST($ID_1 AS INTEGER),'Doe')
		) n(ID, FirstName) ON t1.PersonID = n.ID
ORDER BY
	n.ID

