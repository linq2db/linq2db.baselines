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
	"t1"."Key_1",
	"t1"."Key_2",
	Sum("t1".SKUPAJ)
FROM
	(
		SELECT
			To_Number(To_Char(Coalesce("n".DATUM, @_default), 'YYYY')) as "Key_1",
			To_Number(To_Char(Coalesce("n".DATUM, @_default), 'MM')) as "Key_2",
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
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3761Table"';
END

