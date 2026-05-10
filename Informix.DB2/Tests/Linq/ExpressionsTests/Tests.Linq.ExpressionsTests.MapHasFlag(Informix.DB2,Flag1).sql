-- Informix.DB2 Informix
DECLARE @flag Integer(4) -- Int32
SET     @flag = 1

SELECT
	t.Id,
	t."Value",
	t.Flags
FROM
	MappingTestClass t
WHERE
	BitAnd(t.Flags, @flag::Int) = @flag::Int

