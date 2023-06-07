BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3761Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3761Table"';
END

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3761Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue3761Table"
			(
				LETO     Int       NOT NULL,
				STEVILKA Int       NOT NULL,
				DATUM    TimeStamp,
				SKUPAJ   Decimal,

				CONSTRAINT "PK_Issue3761Table" PRIMARY KEY (LETO, STEVILKA)
			)
		';
END

BeforeExecute
-- Firebird4 Firebird
DECLARE @default TimeStamp -- DateTime
SET     @default = CAST('0001-01-01' AS timestamp)
DECLARE @DATUM TimeStamp -- DateTime
SET     @DATUM = CAST('2019-01-01' AS timestamp)

SELECT
	"t1"."Key_1",
	"t1"."Key_2",
	Sum("t1".SKUPAJ)
FROM
	(
		SELECT
			Cast(Floor(Extract(year from Coalesce("n".DATUM, Cast(@default as TimeStamp)))) as int) as "Key_1",
			Cast(Floor(Extract(month from Coalesce("n".DATUM, Cast(@default as TimeStamp)))) as int) as "Key_2",
			"n".SKUPAJ
		FROM
			"Issue3761Table" "n"
		WHERE
			"n".DATUM < @DATUM
	) "t1"
GROUP BY
	"t1"."Key_1",
	"t1"."Key_2"

BeforeExecute
-- Firebird4 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3761Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3761Table"';
END

