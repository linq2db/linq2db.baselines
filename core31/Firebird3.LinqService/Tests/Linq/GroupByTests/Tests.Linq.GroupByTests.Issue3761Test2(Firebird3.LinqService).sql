BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3761Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3761Table"';
END

BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird
DECLARE @default_1 TimeStamp -- DateTime
SET     @default_1 = CAST('0001-01-01' AS timestamp)
DECLARE @DATUM TimeStamp -- DateTime
SET     @DATUM = CAST('2019-01-01' AS timestamp)

SELECT
	"t2"."Year_1",
	"t2"."Month_1",
	"t2"."Sum_1"
FROM
	(
		SELECT
			"t1"."Year_1",
			"t1"."Month_1",
			Sum("t1".SKUPAJ) as "Sum_1"
		FROM
			(
				SELECT
					Cast(Floor(Extract(year from Coalesce("n".DATUM, Cast(@default_1 as TimeStamp)))) as int) as "Year_1",
					Cast(Floor(Extract(month from Coalesce("n".DATUM, Cast(@default_1 as TimeStamp)))) as int) as "Month_1",
					"n".SKUPAJ
				FROM
					"Issue3761Table" "n"
				WHERE
					"n".DATUM < @DATUM
			) "t1"
		GROUP BY
			"t1"."Year_1",
			"t1"."Month_1"
	) "t2"
UNION ALL
SELECT
	"t4"."Year_1",
	"t4"."Month_1",
	"t4"."Sum_1"
FROM
	(
		SELECT
			"t3"."Year_1",
			"t3"."Month_1",
			Sum("t3".SKUPAJ) as "Sum_1"
		FROM
			(
				SELECT
					Cast(Floor(Extract(year from Coalesce("n_1".DATUM, Cast(@default_1 as TimeStamp)))) as int) as "Year_1",
					Cast(Floor(Extract(month from Coalesce("n_1".DATUM, Cast(@default_1 as TimeStamp)))) as int) as "Month_1",
					"n_1".SKUPAJ
				FROM
					"Issue3761Table" "n_1"
				WHERE
					"n_1".DATUM >= @DATUM
			) "t3"
		GROUP BY
			"t3"."Year_1",
			"t3"."Month_1"
	) "t4"

BeforeExecute
-- Firebird3 Firebird

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3761Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3761Table"';
END

