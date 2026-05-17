-- PostgreSQL.18 PostgreSQL
DECLARE @p -2147483639 -- Object
SET     @p = {2,3}

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

