-- SapHana.Native SapHana
DELETE FROM
	"InheritanceParent" "t1"

-- SapHana.Native SapHana
DECLARE @Key1 Integer -- Int32
SET     @Key1 = 143
DECLARE @Key2 NVarChar -- String
SET     @Key2 = NULL
DECLARE @Data Integer -- Int32
SET     @Data = 1

UPSERT "InheritanceParent"
(
	"InheritanceParentId",
	"Name",
	"TypeDiscriminator"
)
VALUES
(
	:"Key1",
	:"Key2",
	:"Data"
)
WITH PRIMARY KEY

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"

-- SapHana.Native SapHana
DECLARE @Key1 Integer -- Int32
SET     @Key1 = 143
DECLARE @Key2 NVarChar -- String
SET     @Key2 = NULL
DECLARE @Data Integer -- Int32
SET     @Data = 1

UPSERT "InheritanceParent"
(
	"InheritanceParentId",
	"Name",
	"TypeDiscriminator"
)
VALUES
(
	:"Key1",
	:"Key2",
	:"Data"
)
WITH PRIMARY KEY

-- SapHana.Native SapHana
SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"

