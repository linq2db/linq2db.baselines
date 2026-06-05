-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"InheritanceParent" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @Key1 Int -- Int32
SET     @Key1 = 143
DECLARE @Key2 NVarChar -- String
SET     @Key2 = NULL
DECLARE @Data Int -- Int32
SET     @Data = 1

UPSERT "InheritanceParent"
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
WITH PRIMARY KEY

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"

-- SapHana.Odbc SapHanaOdbc
DECLARE @Key1 Int -- Int32
SET     @Key1 = 143
DECLARE @Key2 NVarChar -- String
SET     @Key2 = NULL
DECLARE @Data Int -- Int32
SET     @Data = 1

UPSERT "InheritanceParent"
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
WITH PRIMARY KEY

-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"

