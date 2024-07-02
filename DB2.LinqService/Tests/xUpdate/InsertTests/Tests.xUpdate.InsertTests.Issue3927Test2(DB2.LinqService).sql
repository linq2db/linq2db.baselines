BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3927Table"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue3927Table"
		(
			"SerialNumber" Char(11) NOT NULL,
			"PageNumber"   Int      NOT NULL,

			CONSTRAINT "PK_Issue3927Table" PRIMARY KEY ("SerialNumber")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @pageNumber Integer(4) -- Int32
SET     @pageNumber = 9
DECLARE @serialNumber Char(11) -- StringFixedLength
SET     @serialNumber = '12345678901'

INSERT INTO "Issue3927Table"
(
	"PageNumber"
)
SELECT
	CAST(@pageNumber AS Int)
FROM
	"Issue3927Table" "display"
WHERE
	"display"."SerialNumber" = @serialNumber

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3927Table"';
END

