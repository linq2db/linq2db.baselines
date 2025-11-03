-- Firebird.4 Firebird4

SELECT
	"m_1"."Value2",
	"d"."item"
FROM
	(
		SELECT DISTINCT
			"t"."Value2"
		FROM
			"SampleClass" "t"
	) "m_1"
		CROSS JOIN LATERAL (
			SELECT "m_1"."Value2" AS "item" FROM rdb$database) "d"
WHERE
	"d"."item" IS NOT NULL

-- Firebird.4 Firebird4

SELECT
	"t"."Value2"
FROM
	"SampleClass" "t"
ORDER BY
	"t"."Id"

-- Firebird.4 Firebird4

SELECT
	"m_1"."Value3",
	"d"."item"
FROM
	(
		SELECT DISTINCT
			"t"."Value3"
		FROM
			"SampleClass" "t"
	) "m_1"
		CROSS JOIN LATERAL (
			SELECT "m_1"."Value3" AS "item" FROM rdb$database) "d"
WHERE
	"d"."item" IS NOT NULL

-- Firebird.4 Firebird4

SELECT
	"t"."Value3"
FROM
	"SampleClass" "t"
ORDER BY
	"t"."Id"

-- Firebird.4 Firebird4

SELECT
	"m_1"."Value3",
	"m_1"."Value1",
	"m_1"."Value2",
	"d"."item"
FROM
	(
		SELECT DISTINCT
			"t"."Value3",
			"t"."Value1",
			"t"."Value2"
		FROM
			"SampleClass" "t"
	) "m_1"
		CROSS JOIN LATERAL (
			SELECT "m_1"."Value3" AS "item" FROM rdb$database
			UNION ALL
			SELECT "m_1"."Value1" FROM rdb$database
			UNION ALL
			SELECT "m_1"."Value2" FROM rdb$database) "d"
WHERE
	"d"."item" IS NOT NULL

-- Firebird.4 Firebird4

SELECT
	"t"."Value3",
	"t"."Value1",
	"t"."Value2"
FROM
	"SampleClass" "t"
ORDER BY
	"t"."Id"

-- Firebird.4 Firebird4

SELECT
	"m_1"."Value3",
	"d"."item"
FROM
	(
		SELECT DISTINCT
			"t"."Value3"
		FROM
			"SampleClass" "t"
	) "m_1"
		CROSS JOIN LATERAL (
			SELECT "m_1"."Value3" AS "item" FROM rdb$database
			UNION ALL
			SELECT "m_1"."Value3" FROM rdb$database) "d"
WHERE
	"d"."item" IS NOT NULL

-- Firebird.4 Firebird4

SELECT
	"t"."Value3"
FROM
	"SampleClass" "t"
ORDER BY
	"t"."Id"

