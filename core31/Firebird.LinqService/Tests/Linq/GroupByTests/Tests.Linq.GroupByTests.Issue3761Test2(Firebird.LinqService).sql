BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3761Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3761Table"';
END

BeforeExecute
-- Firebird

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
-- Firebird
DECLARE @_default TimeStamp -- DateTime
SET     @_default = CAST('0001-01-01' AS timestamp)
DECLARE @DATUM TimeStamp -- DateTime
SET     @DATUM = CAST('2019-01-01' AS timestamp)

SELECT
	"t1"."Year_1",
	"t1"."Month_1",
	Sum("t1".SKUPAJ)
FROM
	(
		SELECT
			Cast(Floor(Extract(year from Coalesce("n".DATUM, Cast(@_default as TimeStamp)))) as int) as "Year_1",
			Cast(Floor(Extract(month from Coalesce("n".DATUM, Cast(@_default as TimeStamp)))) as int) as "Month_1",
			"n".SKUPAJ
		FROM
			"Issue3761Table" "n"
		WHERE
			"n".DATUM < @DATUM
	) "t1"
GROUP BY
	"t1"."Year_1",
	"t1"."Month_1"
UNION ALL
SELECT
	"t2"."Year_1",
	"t2"."Month_1",
	Sum("t2".SKUPAJ)
FROM
	(
		SELECT
			Cast(Floor(Extract(year from Coalesce("n_1".DATUM, Cast(@_default as TimeStamp)))) as int) as "Year_1",
			Cast(Floor(Extract(month from Coalesce("n_1".DATUM, Cast(@_default as TimeStamp)))) as int) as "Month_1",
			"n_1".SKUPAJ
		FROM
			"Issue3761Table" "n_1"
		WHERE
			"n_1".DATUM >= @DATUM
	) "t2"
GROUP BY
	"t2"."Year_1",
	"t2"."Month_1"

BeforeExecute
-- Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3761Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3761Table"';
END

