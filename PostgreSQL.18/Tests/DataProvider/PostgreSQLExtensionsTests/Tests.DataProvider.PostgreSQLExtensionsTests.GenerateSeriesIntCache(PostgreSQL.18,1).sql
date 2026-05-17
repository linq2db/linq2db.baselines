-- PostgreSQL.18 PostgreSQL
DECLARE @start Integer -- Int32
SET     @start = 1
DECLARE @stop Integer -- Int32
SET     @stop = 5

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
		INNER JOIN GENERATE_SERIES(:start, :stop) k_1(value) ON t."Id" = k_1.value

