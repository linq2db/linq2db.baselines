-- Informix.DB2 Informix

UPDATE
	Issue4963Table t1
SET
	Field = (t1.Field::Int + -1)::SmallInt

-- Informix.DB2 Informix

SELECT FIRST 2
	t1.Id,
	t1.Field
FROM
	Issue4963Table t1

