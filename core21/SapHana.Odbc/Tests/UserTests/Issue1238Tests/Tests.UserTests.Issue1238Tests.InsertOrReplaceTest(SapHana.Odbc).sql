BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"InheritanceParent" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Data_1  -- Int32
SET     @Data_1 = 1
DECLARE @Key1  -- Int32
SET     @Key1 = 143

UPDATE
	"InheritanceParent"
SET
	"InheritanceParent"."TypeDiscriminator" = ?
WHERE
	"InheritanceParent"."InheritanceParentId" = ? AND "InheritanceParent"."Name" IS NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Key1  -- Int32
SET     @Key1 = 143
DECLARE @Key2 NVarChar -- String
SET     @Key2 = NULL
DECLARE @Data_1  -- Int32
SET     @Data_1 = 1

INSERT INTO "InheritanceParent"
(
	"InheritanceParentId",
	"Name",
	"TypeDiscriminator"
)
VALUES
(
	?,
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Data_1  -- Int32
SET     @Data_1 = 1
DECLARE @Key1  -- Int32
SET     @Key1 = 143

UPDATE
	"InheritanceParent"
SET
	"InheritanceParent"."TypeDiscriminator" = ?
WHERE
	"InheritanceParent"."InheritanceParentId" = ? AND "InheritanceParent"."Name" IS NULL

