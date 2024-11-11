BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3761Table"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue3761Table"
		(
			LETO     Int       NOT NULL,
			STEVILKA Int       NOT NULL,
			DATUM    timestamp     NULL,
			SKUPAJ   Decimal       NULL,

			CONSTRAINT "PK_Issue3761Table" PRIMARY KEY (LETO, STEVILKA)
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @DATUM Timestamp(20) -- DateTime
SET     @DATUM = '2019-01-01-00.00.00.000000'

SELECT
	"t1"."Year_2",
	"t1"."Month_1",
	SUM("t1".SKUPAJ)
FROM
	(
		SELECT
			Extract(year from CASE
				WHEN "n".DATUM IS NOT NULL THEN "n".DATUM
				ELSE '0001-01-01-00.00.00.000000'
			END) as "Year_1",
			Extract(month from CASE
				WHEN "n".DATUM IS NOT NULL THEN "n".DATUM
				ELSE '0001-01-01-00.00.00.000000'
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
				ELSE '0001-01-01-00.00.00.000000'
			END) as "Year_1",
			Extract(month from CASE
				WHEN "n_1".DATUM IS NOT NULL THEN "n_1".DATUM
				ELSE '0001-01-01-00.00.00.000000'
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
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3761Table"';
END

