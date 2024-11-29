BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4613Service"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue4613Service"
(
	"IdContract" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4613Contract"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Issue4613Contract"
(
	"Id" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"contract"."Id",
	"servProj"."IdContract"
FROM
	"Issue4613Service" "servProj"
		INNER JOIN "Issue4613Contract" "contract" ON "servProj"."IdContract" = "contract"."Id"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4613Contract"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Issue4613Service"

