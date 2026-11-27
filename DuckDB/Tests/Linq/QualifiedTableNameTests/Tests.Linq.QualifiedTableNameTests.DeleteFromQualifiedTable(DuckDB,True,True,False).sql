-- DuckDB
SELECT
	current_database()

-- DuckDB
DECLARE $ID INTEGER -- Int32
SET     $ID = 5

DELETE FROM
	memory.QualifiedNameTable t1
WHERE
	t1.ID = $ID

