﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

DECLARE GLOBAL TEMPORARY TABLE SESSION."TestTable"
(
	"Id"    Int NOT NULL,
	"Value" Int NOT NULL
)
ON COMMIT PRESERVE ROWS

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE SESSION."TestTable"';
END

