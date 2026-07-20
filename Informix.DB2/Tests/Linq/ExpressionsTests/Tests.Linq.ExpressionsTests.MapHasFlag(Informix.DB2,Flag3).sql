-- Informix.DB2 Informix
DECLARE @flag Integer(4) -- Int32
SET     @flag = 4
DECLARE @flag_1 Integer(4) -- Int32
SET     @flag_1 = 4

SELECT
	t.Id,
	t."Value",
	t.Flags
FROM
	MappingTestClass t
WHERE
	BitAnd(t.Flags, @flag::Int) = @flag_1

