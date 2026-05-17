-- PostgreSQL.18 PostgreSQL
DECLARE @array -2147483639 -- Object
SET     @array = {2,3}
DECLARE @dimension Integer -- Int32
SET     @dimension = 1
DECLARE @reverse Boolean
SET     @reverse = True

SELECT
	t."Id",
	t."StrValue",
	t."IntValue",
	t."LongValue",
	t."DoubleValue",
	t."DecimalValue",
	t."StrArray",
	t."IntArray",
	t."LongArray",
	t."DoubleArray",
	t."DecimalArray"
FROM
	"SampleClass" t
		INNER JOIN GENERATE_SUBSCRIPTS(:array, :dimension, :reverse) k_1(value) ON t."Id" = k_1.value

