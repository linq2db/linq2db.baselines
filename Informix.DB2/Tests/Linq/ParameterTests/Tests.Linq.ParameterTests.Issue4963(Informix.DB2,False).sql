BeforeExecute
-- Informix.DB2 Informix
DECLARE @offset SmallInt(4) -- Int16
SET     @offset = -1

UPDATE
	Issue4963Table t1
SET
	Field = (t1.Field::Int + @offset)::SmallInt

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	t1.Field
FROM
	Issue4963Table t1

