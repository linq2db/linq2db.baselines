BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DateOnlyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DateOnlyTable"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DateOnlyTable')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "DateOnlyTable"
			(
				"Date" Date NOT NULL
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3

INSERT INTO "DateOnlyTable"
(
	"Date"
)
SELECT CAST('2021-01-01' AS date) FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3

SELECT
	"t1"."Date"
FROM
	"DateOnlyTable" "t1"
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DateOnlyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DateOnlyTable"';
END

