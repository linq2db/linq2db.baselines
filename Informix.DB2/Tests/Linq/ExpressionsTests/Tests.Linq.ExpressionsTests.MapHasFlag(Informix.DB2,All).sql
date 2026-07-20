-- Informix.DB2 Informix
DECLARE @flag Integer(4) -- Int32
SET     @flag = 7
DECLARE @flag_1 Integer(4) -- Int32
SET     @flag_1 = 7

SELECT
	t.Id,
	t."Value",
	t.Flags
FROM
	MappingTestClass t
WHERE
	BitAnd(t.Flags, @flag::Int) = @flag_1

