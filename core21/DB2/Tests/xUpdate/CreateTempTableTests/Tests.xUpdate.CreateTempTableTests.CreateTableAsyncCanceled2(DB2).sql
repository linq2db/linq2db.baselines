﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TempTable"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

DECLARE GLOBAL TEMPORARY TABLE SESSION."TempTable"
(
	ID Int NOT NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

INSERT INTO SESSION."TempTable"
(
	ID
)
SELECT
	"p"."ParentID"
FROM
	"Parent" "p"

BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

DROP TABLE SESSION."TempTable"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "TempTable"

