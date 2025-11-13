-- Firebird.2.5 Firebird

SELECT
	Coalesce("t"."Value2", '')
FROM
	"SampleClass" "t"
ORDER BY
	"t"."Id"

-- Firebird.2.5 Firebird

SELECT
	Coalesce("t"."Value3", '')
FROM
	"SampleClass" "t"
ORDER BY
	"t"."Id"

-- Firebird.2.5 Firebird

SELECT
	SUBSTRING(Coalesce(' -> ' || "t"."Value3", '') || Coalesce(' -> ' || "t"."Value1", '') || Coalesce(' -> ' || "t"."Value2", '') FROM 5)
FROM
	"SampleClass" "t"
ORDER BY
	"t"."Id"

-- Firebird.2.5 Firebird

SELECT
	SUBSTRING(Coalesce(' -> ' || "t"."Value3", '') || Coalesce(' -> ' || "t"."Value3", '') FROM 5)
FROM
	"SampleClass" "t"
ORDER BY
	"t"."Id"

