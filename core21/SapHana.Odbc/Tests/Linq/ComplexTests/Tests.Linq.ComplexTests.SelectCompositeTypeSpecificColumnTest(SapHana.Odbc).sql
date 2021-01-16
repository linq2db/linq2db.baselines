BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "User"
(
	"city"            NVarChar(255)     NULL,
	"user_name"       NVarChar(255)     NULL,
	"street"          NVarChar(255)     NULL,
	"building_number" Integer       NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "User"

