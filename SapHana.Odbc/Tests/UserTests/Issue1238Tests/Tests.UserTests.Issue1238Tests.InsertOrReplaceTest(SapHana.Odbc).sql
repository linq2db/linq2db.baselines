BeforeExecute
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"InheritanceParent" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Data Int -- Int32
SET     @Data = 1
DECLARE @Key1 Int -- Int32
SET     @Key1 = 143

UPDATE
	"InheritanceParent" "t1"
SET
	"TypeDiscriminator" = ?
WHERE
	"t1"."InheritanceParentId" = ? AND "t1"."Name" IS NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Key1 Int -- Int32
SET     @Key1 = 143
DECLARE @Key2 NVarChar -- String
SET     @Key2 = NULL
DECLARE @Data Int -- Int32
SET     @Data = 1

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

SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Data Int -- Int32
SET     @Data = 1
DECLARE @Key1 Int -- Int32
SET     @Key1 = 143

UPDATE
	"InheritanceParent" "t1"
SET
	"TypeDiscriminator" = ?
WHERE
	"t1"."InheritanceParentId" = ? AND "t1"."Name" IS NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"InheritanceParent" "t1"

BeforeExecute
DisposeTransaction
