﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TempTable"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"p"."ParentID"
FROM
	"Parent" "p"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

DECLARE GLOBAL TEMPORARY TABLE SESSION."TempTable"
(
	ID Int NOT NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "TempTable"

