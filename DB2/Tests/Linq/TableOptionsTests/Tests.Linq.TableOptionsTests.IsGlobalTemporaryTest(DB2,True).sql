﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

CREATE GLOBAL TEMPORARY TABLE SESSION."IsGlobalTemporaryTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	SESSION."IsGlobalTemporaryTable" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE SESSION."IsGlobalTemporaryTable"';
END

