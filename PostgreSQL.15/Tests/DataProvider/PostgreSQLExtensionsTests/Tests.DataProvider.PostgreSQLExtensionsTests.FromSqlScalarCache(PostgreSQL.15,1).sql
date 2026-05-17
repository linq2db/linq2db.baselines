-- PostgreSQL.15 PostgreSQL
DECLARE @p -2147483639 -- Object
SET     @p = {1,5,42}

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
		INNER JOIN UNNEST(:p) k_1(value) ON t."Id" = k_1.value

