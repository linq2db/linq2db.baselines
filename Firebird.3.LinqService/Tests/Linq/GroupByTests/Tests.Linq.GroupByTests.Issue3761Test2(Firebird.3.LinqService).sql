BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3761Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3761Table"';
END

BeforeExecute
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3761Table')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE "Issue3761Table"
			(
				LETO     Int             NOT NULL,
				STEVILKA Int             NOT NULL,
				DATUM    TimeStamp,
				SKUPAJ   Decimal(18, 10),

				CONSTRAINT "PK_Issue3761Table" PRIMARY KEY (LETO, STEVILKA)
			)
		';
END

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @DATUM TimeStamp -- DateTime
SET     @DATUM = CAST('2019-01-01' AS timestamp)

SELECT
	"t1"."Year_2",
	"t1"."Month_1",
	SUM("t1".SKUPAJ)
FROM
	(
		SELECT
			Extract(year from CASE
				WHEN "n".DATUM IS NOT NULL THEN "n".DATUM
				ELSE CAST('0001-01-01' AS timestamp)
			END) as "Year_1",
			Extract(month from CASE
				WHEN "n".DATUM IS NOT NULL THEN "n".DATUM
				ELSE CAST('0001-01-01' AS timestamp)
			END) as "Month_1",
			CAST(0 AS Int) as "Year_2",
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
	"t2"."Year_2",
	"t2"."Month_1",
	SUM("t2".SKUPAJ)
FROM
	(
		SELECT
			Extract(year from CASE
				WHEN "n_1".DATUM IS NOT NULL THEN "n_1".DATUM
				ELSE CAST('0001-01-01' AS timestamp)
			END) as "Year_1",
			Extract(month from CASE
				WHEN "n_1".DATUM IS NOT NULL THEN "n_1".DATUM
				ELSE CAST('0001-01-01' AS timestamp)
			END) as "Month_1",
			CAST(0 AS Int) as "Year_2",
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
-- Firebird.3 Firebird3

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'Issue3761Table')) THEN
		EXECUTE STATEMENT 'DROP TABLE "Issue3761Table"';
END

