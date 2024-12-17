BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "User"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "User"
(
	"FirstName" NVarChar(255)     NULL,
	"Status"    Integer           NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"user_1"."FirstName",
	"user_1"."Status"
FROM
	"User" "user_1"
WHERE
	"user_1"."Status" IS NULL

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "User"

