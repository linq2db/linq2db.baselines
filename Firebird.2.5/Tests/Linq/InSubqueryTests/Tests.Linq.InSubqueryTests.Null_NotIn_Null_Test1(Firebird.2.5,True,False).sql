BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_in_1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "test_in_1"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird

INSERT INTO "test_in_1"
(
	ID
)
SELECT 1 FROM rdb$database UNION ALL
SELECT 3 FROM rdb$database UNION ALL
SELECT 4 FROM rdb$database UNION ALL
SELECT 5 FROM rdb$database UNION ALL
SELECT NULL FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_in_2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "test_in_2"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_in_2')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "test_in_2"
			(
				ID Int
			)
		';
END

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "test_in_2"
(
	ID
)
SELECT 1 FROM rdb$database UNION ALL
SELECT 2 FROM rdb$database UNION ALL
SELECT 4 FROM rdb$database UNION ALL
SELECT 6 FROM rdb$database UNION ALL
SELECT NULL FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t".ID
FROM
	"test_in_1" "t"
WHERE
	"t".ID IS NOT NULL AND  NOT EXISTS (
		SELECT
			*
		FROM
			"test_in_2" "p"
		WHERE
			"p".ID IS NOT NULL AND "t".ID = "p".ID
	)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1".ID
FROM
	"test_in_1" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	"t1".ID
FROM
	"test_in_2" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_in_2')) THEN
		EXECUTE STATEMENT 'DROP TABLE "test_in_2"';
END

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'test_in_1')) THEN
		EXECUTE STATEMENT 'DROP TABLE "test_in_1"';
END

