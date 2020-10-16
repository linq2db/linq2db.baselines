﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TempTable"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE TABLE "TempTable"
(
	ID Int NOT NULL
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "TempTable"
(
	ID
)
SELECT
	"p"."ParentID"
FROM
	"Parent" "p"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1".ID
FROM
	"TempTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t".ID
FROM
	"Parent" "p"
		INNER JOIN "TempTable" "t" ON "p"."ParentID" = "t".ID

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DROP TABLE "TempTable"

