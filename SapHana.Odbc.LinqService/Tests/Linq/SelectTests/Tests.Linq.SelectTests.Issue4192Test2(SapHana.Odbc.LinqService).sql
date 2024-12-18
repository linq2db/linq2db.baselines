BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4192TableNullable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue4192TableNullable"
(
	"Name"     NVarChar(255)     NULL,
	"ParentId" Integer           NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @parentId  -- Int32
SET     @parentId = 12

SELECT
	"i"."Name",
	"i"."ParentId"
FROM
	"Issue4192TableNullable" "i"
WHERE
	"i"."ParentId" = ? AND "i"."ParentId" IS NOT NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4192TableNullable"

