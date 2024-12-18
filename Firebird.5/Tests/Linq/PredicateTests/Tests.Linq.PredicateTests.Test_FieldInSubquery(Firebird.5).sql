BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BooleanTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BooleanTable"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BooleanTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "BooleanTable"
			(
				"Id"     Int NOT NULL,
				"Value1" Int NOT NULL,
				"Value2" Int NOT NULL,
				"Value4" Int,
				"Value5" Int
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "BooleanTable"
(
	"Id",
	"Value1",
	"Value2",
	"Value4",
	"Value5"
)
SELECT 1,0,0,NULL,NULL FROM rdb$database UNION ALL
SELECT 2,0,0,NULL,0 FROM rdb$database UNION ALL
SELECT 3,0,0,NULL,1 FROM rdb$database UNION ALL
SELECT 4,0,0,0,NULL FROM rdb$database UNION ALL
SELECT 5,0,0,0,0 FROM rdb$database UNION ALL
SELECT 6,0,0,0,1 FROM rdb$database UNION ALL
SELECT 7,0,0,1,NULL FROM rdb$database UNION ALL
SELECT 8,0,0,1,0 FROM rdb$database UNION ALL
SELECT 9,0,0,1,1 FROM rdb$database UNION ALL
SELECT 10,0,1,NULL,NULL FROM rdb$database UNION ALL
SELECT 11,0,1,NULL,0 FROM rdb$database UNION ALL
SELECT 12,0,1,NULL,1 FROM rdb$database UNION ALL
SELECT 13,0,1,0,NULL FROM rdb$database UNION ALL
SELECT 14,0,1,0,0 FROM rdb$database UNION ALL
SELECT 15,0,1,0,1 FROM rdb$database UNION ALL
SELECT 16,0,1,1,NULL FROM rdb$database UNION ALL
SELECT 17,0,1,1,0 FROM rdb$database UNION ALL
SELECT 18,0,1,1,1 FROM rdb$database UNION ALL
SELECT 19,1,0,NULL,NULL FROM rdb$database UNION ALL
SELECT 20,1,0,NULL,0 FROM rdb$database UNION ALL
SELECT 21,1,0,NULL,1 FROM rdb$database UNION ALL
SELECT 22,1,0,0,NULL FROM rdb$database UNION ALL
SELECT 23,1,0,0,0 FROM rdb$database UNION ALL
SELECT 24,1,0,0,1 FROM rdb$database UNION ALL
SELECT 25,1,0,1,NULL FROM rdb$database UNION ALL
SELECT 26,1,0,1,0 FROM rdb$database UNION ALL
SELECT 27,1,0,1,1 FROM rdb$database UNION ALL
SELECT 28,1,1,NULL,NULL FROM rdb$database UNION ALL
SELECT 29,1,1,NULL,0 FROM rdb$database UNION ALL
SELECT 30,1,1,NULL,1 FROM rdb$database UNION ALL
SELECT 31,1,1,0,NULL FROM rdb$database UNION ALL
SELECT 32,1,1,0,0 FROM rdb$database UNION ALL
SELECT 33,1,1,0,1 FROM rdb$database UNION ALL
SELECT 34,1,1,1,NULL FROM rdb$database UNION ALL
SELECT 35,1,1,1,0 FROM rdb$database UNION ALL
SELECT 36,1,1,1,1 FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"BooleanTable" "r_1"
		WHERE
			"r"."Value2" = "r_1"."Value1"
	)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"BooleanTable" "r_1"
		WHERE
			"r"."Value2" = "r_1"."Value4" AND "r_1"."Value4" IS NOT NULL
	)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"BooleanTable" "r_1"
		WHERE
			"r"."Value5" = "r_1"."Value1" AND "r"."Value5" IS NOT NULL
	)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"BooleanTable" "r_1"
		WHERE
			"r"."Value5" = "r_1"."Value4" AND "r"."Value5" IS NOT NULL AND "r_1"."Value4" IS NOT NULL OR
			"r"."Value5" IS NULL AND "r_1"."Value4" IS NULL
	)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			"BooleanTable" "r_1"
		WHERE
			"r"."Value2" = "r_1"."Value1"
	)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			"BooleanTable" "r_1"
		WHERE
			"r"."Value2" = "r_1"."Value4" AND "r_1"."Value4" IS NOT NULL
	)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			"BooleanTable" "r_1"
		WHERE
			"r"."Value5" = "r_1"."Value1" AND "r"."Value5" IS NOT NULL
	)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"r"."Id",
	"r"."Value1",
	"r"."Value2",
	"r"."Value4",
	"r"."Value5"
FROM
	"BooleanTable" "r"
WHERE
	NOT EXISTS(
		SELECT
			*
		FROM
			"BooleanTable" "r_1"
		WHERE
			"r"."Value5" = "r_1"."Value4" AND "r"."Value5" IS NOT NULL AND "r_1"."Value4" IS NOT NULL OR
			"r"."Value5" IS NULL AND "r_1"."Value4" IS NULL
	)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1"."Id",
	"t1"."Value1",
	"t1"."Value2",
	"t1"."Value4",
	"t1"."Value5"
FROM
	"BooleanTable" "t1"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'BooleanTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "BooleanTable"';
END

