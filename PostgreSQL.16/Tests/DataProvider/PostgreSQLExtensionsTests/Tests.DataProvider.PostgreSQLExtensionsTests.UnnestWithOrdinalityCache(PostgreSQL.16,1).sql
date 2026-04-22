-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @array -2147483639 -- Object
SET     @array = {1,5,42}

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
		INNER JOIN UNNEST(:array) WITH ORDINALITY k_1(value, idx) ON t."Id" = k_1.value

