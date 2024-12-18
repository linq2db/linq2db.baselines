BeforeExecute
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"InheritanceParent" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

MERGE INTO "InheritanceParent" "Target"
USING (
	SELECT 143 AS "source_Key1", NULL AS "source_Key2", 1 AS "source_Data" FROM DUMMY) "Source"
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
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

MERGE INTO "InheritanceParent" "Target"
USING (
	SELECT 143 AS "source_Key1", NULL AS "source_Key2", 1 AS "source_Data" FROM DUMMY) "Source"
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
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"

BeforeExecute
DisposeTransaction
