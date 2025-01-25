BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "CacheTestTable"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "CacheTestTable"
		(
			"Id"    Int NOT NULL,
			"Value" Int NOT NULL,

			CONSTRAINT "PK_CacheTestTable" PRIMARY KEY ("Id")
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

MERGE INTO "CacheTestTable" "Target"
USING (VALUES
	(1,1), (2,2)
) "Source"
(
	"source_Id",
	"source_Value"
)
ON ("Target"."Id" = "Source"."source_Id")

WHEN MATCHED THEN
UPDATE
SET
	"Value" = "Source"."source_Value"

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	"Source"."source_Id",
	"Source"."source_Value"
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"CacheTestTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

MERGE INTO "CacheTestTable" "Target"
USING (VALUES
	(1,1), (2,4), (3,3)
) "Source"
(
	"source_Id",
	"source_Value"
)
ON ("Target"."Id" = "Source"."source_Id")

WHEN MATCHED THEN
UPDATE
SET
	"Value" = "Source"."source_Value"

WHEN NOT MATCHED THEN
INSERT
(
	"Id",
	"Value"
)
VALUES
(
	"Source"."source_Id",
	"Source"."source_Value"
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"t1"."Id",
	"t1"."Value"
FROM
	"CacheTestTable" "t1"
ORDER BY
	"t1"."Id"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "CacheTestTable"';
END

