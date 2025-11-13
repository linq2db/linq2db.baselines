-- Firebird.3 Firebird3

SELECT
	Coalesce("t"."Value2", '')
FROM
	"SampleClass" "t"
ORDER BY
	"t"."Id"

-- Firebird.3 Firebird3

SELECT
	Coalesce("t"."Value3", '')
FROM
	"SampleClass" "t"
ORDER BY
	"t"."Id"

-- Firebird.3 Firebird3

SELECT
	SUBSTRING(Coalesce(' -> ' || "t"."Value3", '') || Coalesce(' -> ' || "t"."Value1", '') || Coalesce(' -> ' || "t"."Value2", '') FROM 5)
FROM
	"SampleClass" "t"
ORDER BY
	"t"."Id"

-- Firebird.3 Firebird3

SELECT
	SUBSTRING(Coalesce(' -> ' || "t"."Value3", '') || Coalesce(' -> ' || "t"."Value3", '') FROM 5)
FROM
	"SampleClass" "t"
ORDER BY
	"t"."Id"

