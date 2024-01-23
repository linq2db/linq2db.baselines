BeforeExecute
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
	3,
	'***VVV***'
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

MERGE INTO "TrimTestTable" "Target"
USING (VALUES
	(1,'***OOO***'), (2,'***SSS***')
) "Source"
(
	ID,
	"Data_1"
)
ON ("Target".ID = "Source".ID)

WHEN MATCHED THEN
UPDATE
SET
	"Target"."Data" = "Source"."Data_1"

WHEN NOT MATCHED THEN
INSERT
(
	ID,
	"Data"
)
VALUES
(
	"Source".ID,
	"Source"."Data_1"
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

MERGE INTO "TrimTestTable" "Target"
USING (VALUES
	(3,'***III***')
) "Source"
(
	ID,
	"Data_1"
)
ON ("Target".ID = "Source".ID)

WHEN MATCHED THEN
UPDATE
SET
	"Target"."Data" = "Source"."Data_1"

WHEN NOT MATCHED THEN
INSERT
(
	ID,
	"Data"
)
VALUES
(
	"Source".ID,
	"Source"."Data_1"
)

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

