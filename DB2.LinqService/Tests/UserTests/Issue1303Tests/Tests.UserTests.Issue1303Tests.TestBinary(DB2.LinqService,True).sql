﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1303"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue1303"
		(
			ID       Int           NOT NULL,
			"Array"  VARBINARY(10)     NULL,
			"Binary" VARBINARY(10)     NULL,

			CONSTRAINT "PK_Issue1303" PRIMARY KEY (ID)
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Array VarBinary(3) -- Binary
SET     @Array = BX'010203'
DECLARE @Binary VarBinary(2) -- Binary
SET     @Binary = BX'0405'

INSERT INTO "Issue1303"
(
	ID,
	"Array",
	"Binary"
)
VALUES
(
	1,
	@Array,
	@Binary
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"_".ID,
	"_"."Array",
	"_"."Binary"
FROM
	"Issue1303" "_"
WHERE
	"_".ID = 1
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"_".ID,
	"_"."Array",
	"_"."Binary"
FROM
	"Issue1303" "_"
WHERE
	"_"."Array" = BX'010203'
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"_".ID,
	"_"."Array",
	"_"."Binary"
FROM
	"Issue1303" "_"
WHERE
	"_"."Binary" = BX'0405'
FETCH FIRST 2 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue1303"';
END

