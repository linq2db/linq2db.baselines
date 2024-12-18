BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestInsertOrReplaceTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "TestInsertOrReplaceTable"
(
	"ID"         Integer       NOT NULL,
	"FirstName"  NVarChar(255)     NULL,
	"LastName"   NVarChar(255)     NULL,
	"MiddleName" NVarChar(255)     NULL,

	PRIMARY KEY ("ID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @ID  -- Int32
SET     @ID = 123
DECLARE @FirstName NVarChar(4) -- String
SET     @FirstName = 'John'

INSERT INTO "TestInsertOrReplaceTable"
(
	"ID",
	"FirstName"
)
VALUES
(
	?,
	?
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	COUNT(*)
FROM
	"TestInsertOrReplaceTable" "x"
WHERE
	"x"."ID" = 123 AND "x"."FirstName" = 'John' AND "x"."FirstName" IS NOT NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "TestInsertOrReplaceTable"

