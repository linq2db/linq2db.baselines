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
	"Key1",
	"Key2",
	"Data_1"
)
ON ("Target"."InheritanceParentId" = "Source"."Key1" AND
("Target"."Name" = "Source"."Key2" OR "Target"."Name" IS NULL AND "Source"."Key2" IS NULL))

WHEN MATCHED THEN
UPDATE
SET
	"TypeDiscriminator" = "Source"."Data_1"

WHEN NOT MATCHED THEN
INSERT
(
	"InheritanceParentId",
	"Name",
	"TypeDiscriminator"
)
VALUES
(
	"Source"."Key1",
	"Source"."Key2",
	"Source"."Data_1"
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
	"Key1",
	"Key2",
	"Data_1"
)
ON ("Target"."InheritanceParentId" = "Source"."Key1" AND
("Target"."Name" = "Source"."Key2" OR "Target"."Name" IS NULL AND "Source"."Key2" IS NULL))

WHEN MATCHED THEN
UPDATE
SET
	"TypeDiscriminator" = "Source"."Data_1"

WHEN NOT MATCHED THEN
INSERT
(
	"InheritanceParentId",
	"Name",
	"TypeDiscriminator"
)
VALUES
(
	"Source"."Key1",
	"Source"."Key2",
	"Source"."Data_1"
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"

BeforeExecute
DisposeTransaction
