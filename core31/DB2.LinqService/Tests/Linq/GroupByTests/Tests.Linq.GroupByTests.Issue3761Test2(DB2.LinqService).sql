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
DECLARE @_default Timestamp(20) -- DateTime
SET     @_default = '0001-01-01-00.00.00.000000'
DECLARE @DATUM Timestamp(20) -- DateTime
SET     @DATUM = '2019-01-01-00.00.00.000000'

SELECT
	"t1"."Year_1",
	"t1"."Month_1",
	Sum("t1".SKUPAJ)
FROM
	(
		SELECT
			To_Number(To_Char(Coalesce("n".DATUM, @_default), 'YYYY')) as "Year_1",
			To_Number(To_Char(Coalesce("n".DATUM, @_default), 'MM')) as "Month_1",
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
			To_Number(To_Char(Coalesce("n_1".DATUM, @_default), 'YYYY')) as "Year_1",
			To_Number(To_Char(Coalesce("n_1".DATUM, @_default), 'MM')) as "Month_1",
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

