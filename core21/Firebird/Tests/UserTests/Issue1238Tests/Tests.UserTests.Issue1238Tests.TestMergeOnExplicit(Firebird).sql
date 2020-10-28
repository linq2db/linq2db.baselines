BeforeExecute
-- Firebird

DELETE FROM
	"InheritanceParent" "t1"

BeforeExecute
-- Firebird

MERGE INTO "InheritanceParent" "Target"
USING (	SELECT 143, NULL, 1 FROM rdb$database) "Source"
(
	"Key1",
	"Key2",
	"Data_1"
)
ON ("Target"."InheritanceParentId" = "Source"."Key1" AND ("Target"."Name" = "Source"."Key2" OR "Target"."Name" IS NULL AND "Source"."Key2" IS NULL))

WHEN MATCHED THEN
UPDATE
SET
	"Target"."TypeDiscriminator" = "Source"."Data_1"

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
-- Firebird

SELECT
	Count(*)
FROM
	"InheritanceParent" "t1"

BeforeExecute
-- Firebird

MERGE INTO "InheritanceParent" "Target"
USING (	SELECT 143, NULL, 1 FROM rdb$database) "Source"
(
	"Key1",
	"Key2",
	"Data_1"
)
ON ("Target"."InheritanceParentId" = "Source"."Key1" AND ("Target"."Name" = "Source"."Key2" OR "Target"."Name" IS NULL AND "Source"."Key2" IS NULL))

WHEN MATCHED THEN
UPDATE
SET
	"Target"."TypeDiscriminator" = "Source"."Data_1"

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
-- Firebird

SELECT
	Count(*)
FROM
	"InheritanceParent" "t1"

