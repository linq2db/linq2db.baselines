BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DateOnlyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DateOnlyTable"';
END

BeforeExecute
-- Firebird.2.5 Firebird

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
-- Firebird.2.5 Firebird
DECLARE @Date Date
SET     @Date = CAST('2021-01-01' AS date)

INSERT INTO "DateOnlyTable"
(
	"Date"
)
VALUES
(
	@Date
)

BeforeExecute
-- Firebird.2.5 Firebird

SELECT FIRST 2
	"t1"."Date"
FROM
	"DateOnlyTable" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'DateOnlyTable')) THEN
		EXECUTE STATEMENT 'DROP TABLE "DateOnlyTable"';
END

