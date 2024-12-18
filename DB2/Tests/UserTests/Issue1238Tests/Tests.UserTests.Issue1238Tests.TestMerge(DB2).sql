BeforeExecute
BeginTransaction
BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"InheritanceParent" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

MERGE INTO "InheritanceParent" "Target"
USING (VALUES
	(143,CAST(NULL AS NVarChar(255)),1)
) "Source"
(
	"source_Key1",
	"source_Key2",
	"source_Data"
)
ON ("Target"."InheritanceParentId" = "Source"."source_Key1" AND
("Target"."Name" = "Source"."source_Key2" AND "Target"."Name" IS NOT NULL AND "Source"."source_Key2" IS NOT NULL OR "Target"."Name" IS NULL AND "Source"."source_Key2" IS NULL))

WHEN MATCHED THEN
UPDATE
SET
	"TypeDiscriminator" = "Source"."source_Data"

WHEN NOT MATCHED THEN
INSERT
(
	"InheritanceParentId",
	"Name",
	"TypeDiscriminator"
)
VALUES
(
	"Source"."source_Key1",
	"Source"."source_Key2",
	"Source"."source_Data"
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"

BeforeExecute
-- DB2 DB2.LUW DB2LUW

MERGE INTO "InheritanceParent" "Target"
USING (VALUES
	(143,CAST(NULL AS NVarChar(255)),1)
) "Source"
(
	"source_Key1",
	"source_Key2",
	"source_Data"
)
ON ("Target"."InheritanceParentId" = "Source"."source_Key1" AND
("Target"."Name" = "Source"."source_Key2" AND "Target"."Name" IS NOT NULL AND "Source"."source_Key2" IS NOT NULL OR "Target"."Name" IS NULL AND "Source"."source_Key2" IS NULL))

WHEN MATCHED THEN
UPDATE
SET
	"TypeDiscriminator" = "Source"."source_Data"

WHEN NOT MATCHED THEN
INSERT
(
	"InheritanceParentId",
	"Name",
	"TypeDiscriminator"
)
VALUES
(
	"Source"."source_Key1",
	"Source"."source_Key2",
	"Source"."source_Data"
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"

BeforeExecute
DisposeTransaction
