BeforeExecute
-- SapHana.Native SapHana

DELETE FROM
	"InheritanceParent" "t1"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Data_1  -- Int32
SET     @Data_1 = 1
DECLARE @Key1_1  -- Int32
SET     @Key1_1 = 143

UPDATE
	"InheritanceParent"
SET
	"InheritanceParent"."TypeDiscriminator" = :"Data_1"
WHERE
	"InheritanceParent"."InheritanceParentId" = :"Key1_1" AND
	"InheritanceParent"."Name" IS NULL

BeforeExecute
-- SapHana.Native SapHana
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
	:"Key1",
	:"Key2",
	:"Data_1"
)

BeforeExecute
-- SapHana.Native SapHana

SELECT
	Count(*)
FROM
	"InheritanceParent" "t1"

BeforeExecute
-- SapHana.Native SapHana
DECLARE @Data_1  -- Int32
SET     @Data_1 = 1
DECLARE @Key1_1_1  -- Int32
SET     @Key1_1_1 = 143

UPDATE
	"InheritanceParent"
SET
	"InheritanceParent"."TypeDiscriminator" = :"Data_1"
WHERE
	"InheritanceParent"."InheritanceParentId" = :"Key1_1_1" AND
	"InheritanceParent"."Name" IS NULL

BeforeExecute
-- SapHana.Native SapHana

SELECT
	Count(*)
FROM
	"InheritanceParent" "t1"

