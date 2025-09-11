BeforeExecute
-- Informix.DB2 Informix
DECLARE @offset Integer(4) -- Int32
SET     @offset = -1

UPDATE
	Issue4963Table t1
SET
	Field = (t1.Field::Int + @offset)::SmallInt

BeforeExecute
-- Informix.DB2 Informix

SELECT FIRST 2
	t1.Id,
	t1.Field
FROM
	Issue4963Table t1

