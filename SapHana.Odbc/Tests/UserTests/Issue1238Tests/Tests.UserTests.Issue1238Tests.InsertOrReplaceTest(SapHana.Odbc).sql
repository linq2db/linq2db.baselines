﻿BeforeExecute
BeginTransaction
BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DELETE FROM
	"InheritanceParent" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Data  -- Int32
SET     @Data = 1
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
DECLARE @Data  -- Int32
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
	Count(*)
FROM
	"InheritanceParent" "t1"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @Data  -- Int32
SET     @Data = 1
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

SELECT
	Count(*)
FROM
	"InheritanceParent" "t1"

BeforeExecute
DisposeTransaction
