BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4192TableNotNullable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue4192TableNotNullable"
(
	"Name"     NVarChar(255)     NULL,
	"ParentId" Integer       NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4192TableNotNullable"

