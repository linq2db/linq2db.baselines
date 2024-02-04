﻿BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TrimTestTable"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "TrimTestTable"
		(
			ID     Int          NOT NULL,
			"Data" NVarChar(50)     NULL,

			CONSTRAINT "PK_TrimTestTable" PRIMARY KEY (ID)
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
VALUES
(
	1,
	'***XXX***'
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
VALUES
(
	2,
	'***HHH***'
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "TrimTestTable"
(
	ID,
	"Data"
)
VALUES
(
	3,
	'***VVV***'
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

UPDATE
	"TrimTestTable"
SET
	"TrimTestTable"."Data" = '***III***'
WHERE
	"TrimTestTable".ID = 3

BeforeExecute
-- DB2 DB2.LUW DB2LUW

UPDATE
	"TrimTestTable"
SET
	"TrimTestTable"."Data" = '***OOO***'
WHERE
	"TrimTestTable"."Data" = '***XXX***'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

UPDATE
	"TrimTestTable"
SET
	"TrimTestTable"."Data" = '***SSS***'
WHERE
	"TrimTestTable"."Data" = '***HHH***'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"r".ID,
	"r"."Data"
FROM
	"TrimTestTable" "r"
ORDER BY
	"r".ID

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "TrimTestTable"';
END

