-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value3",
	"t1"."Value4"
FROM
	"SampleClass" "t1"
ORDER BY
	"t1"."Id"

-- Firebird.5 Firebird4

SELECT
	Coalesce("t"."Value2", '')
FROM
	"SampleClass" "t"
ORDER BY
	"t"."Id"

-- Firebird.5 Firebird4

SELECT
	Coalesce("t"."Value3", '')
FROM
	"SampleClass" "t"
ORDER BY
	"t"."Id"

-- Firebird.5 Firebird4

SELECT
	SUBSTRING(Coalesce(' -> ' || "t"."Value3", '') || Coalesce(' -> ' || "t"."Value1", '') || Coalesce(' -> ' || "t"."Value2", '') FROM 5)
FROM
	"SampleClass" "t"
ORDER BY
	"t"."Id"

-- Firebird.5 Firebird4

SELECT
	SUBSTRING(Coalesce(' -> ' || "t"."Value3", '') || Coalesce(' -> ' || "t"."Value3", '') FROM 5)
FROM
	"SampleClass" "t"
ORDER BY
	"t"."Id"

