BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"InheritanceParent" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

MERGE INTO "InheritanceParent" "Target"
USING (	SELECT 143 "Key1",NULL "Key2",1 "Data_1" FROM DUMMY) "Source"
ON ("Target"."InheritanceParentId" = "Source"."Key1" AND ("Target"."Name" IS NULL AND "Source"."Key2" IS NULL OR "Target"."Name" = "Source"."Key2"))

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
-- SapHana.Odbc SapHanaOdbc

SELECT
	Count(*)
FROM
	"InheritanceParent" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

MERGE INTO "InheritanceParent" "Target"
USING (	SELECT 143 "Key1",NULL "Key2",1 "Data_1" FROM DUMMY) "Source"
ON ("Target"."InheritanceParentId" = "Source"."Key1" AND ("Target"."Name" IS NULL AND "Source"."Key2" IS NULL OR "Target"."Name" = "Source"."Key2"))

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
-- SapHana.Odbc SapHanaOdbc

SELECT
	Count(*)
FROM
	"InheritanceParent" "t1"

