BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird.5 Firebird4

DELETE FROM
	"InheritanceParent" "t1"

BeforeExecute
-- Firebird.5 Firebird4

MERGE INTO "InheritanceParent" "Target"
USING (
	SELECT 143 AS "source_Key1", NULL AS "source_Key2", 1 AS "source_Data" FROM rdb$database) "Source"
(
	"source_Key1",
	"source_Key2",
	"source_Data"
)
ON ("Target"."InheritanceParentId" = "Source"."source_Key1" AND
("Target"."Name" = "Source"."source_Key2" OR "Target"."Name" IS NULL AND "Source"."source_Key2" IS NULL))

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
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"

BeforeExecute
-- Firebird.5 Firebird4

MERGE INTO "InheritanceParent" "Target"
USING (
	SELECT 143 AS "source_Key1", NULL AS "source_Key2", 1 AS "source_Data" FROM rdb$database) "Source"
(
	"source_Key1",
	"source_Key2",
	"source_Data"
)
ON ("Target"."InheritanceParentId" = "Source"."source_Key1" AND
("Target"."Name" = "Source"."source_Key2" OR "Target"."Name" IS NULL AND "Source"."source_Key2" IS NULL))

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
-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"

BeforeExecute
DisposeTransaction
