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
(1,'***XXX***'),
(3,'***VVV***')

BeforeExecute
-- DB2 DB2.LUW DB2LUW

MERGE INTO "TrimTestTable" "Target"
USING (VALUES
	(1,'***OOO***'), (2,'***SSS***')
) "Source"
(
	"source_ID",
	"source_Data"
)
ON ("Target".ID = "Source"."source_ID")

WHEN MATCHED THEN
UPDATE
SET
	"Data" = "Source"."source_Data"

WHEN NOT MATCHED THEN
INSERT
(
	ID,
	"Data"
)
VALUES
(
	"Source"."source_ID",
	"Source"."source_Data"
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

MERGE INTO "TrimTestTable" "Target"
USING (VALUES
	(3,'***III***')
) "Source"
(
	"source_ID",
	"source_Data"
)
ON ("Target".ID = "Source"."source_ID")

WHEN MATCHED THEN
UPDATE
SET
	"Data" = "Source"."source_Data"

WHEN NOT MATCHED THEN
INSERT
(
	ID,
	"Data"
)
VALUES
(
	"Source"."source_ID",
	"Source"."source_Data"
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

