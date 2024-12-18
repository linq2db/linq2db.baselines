BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_in_1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "test_in_1"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_in_1')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "test_in_1"
			(
				ID Int
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "test_in_1"
(
	ID
)
SELECT 1 FROM rdb$database UNION ALL
SELECT 3 FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_in_2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "test_in_2"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_in_2')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "test_in_2"
			(
				ID Int,
				GV Int
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

INSERT INTO "test_in_2"
(
	ID,
	GV
)
SELECT 1,1 FROM rdb$database UNION ALL
SELECT 2,0 FROM rdb$database UNION ALL
SELECT NULL,NULL FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t".ID
FROM
	"test_in_1" "t"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT
					MIN("g_1".ID) as "In_1"
				FROM
					"test_in_2" "g_1"
				GROUP BY
					"g_1".GV
			) "t1"
		WHERE
			"t".ID = "t1"."In_1" AND "t".ID IS NOT NULL AND "t1"."In_1" IS NOT NULL OR
			"t".ID IS NULL AND "t1"."In_1" IS NULL
	)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1".ID
FROM
	"test_in_1" "t1"

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	"t1".ID,
	"t1".GV
FROM
	"test_in_2" "t1"

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_in_2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "test_in_2"';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_in_1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "test_in_1"';
END

