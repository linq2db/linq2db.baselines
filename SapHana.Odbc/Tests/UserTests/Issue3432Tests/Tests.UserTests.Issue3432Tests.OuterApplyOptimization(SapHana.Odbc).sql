BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Task"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Task"
(
	"AdminPartyId" Integer       NOT NULL,
	"Description"  NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Party"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Party"
(
	"Id"   Integer       NOT NULL,
	"Name" NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "PartyAccess"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "PartyAccess"
(
	"PartyId" Integer       NOT NULL,
	"Role"    NVarChar(255)     NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"task_1"."Description",
	"party_1"."Name"
FROM
	"Task" "task_1"
		LEFT JOIN "Party" "party_1" ON "task_1"."AdminPartyId" = "party_1"."Id" OR EXISTS(
			SELECT
				*
			FROM
				"PartyAccess" "pa"
			WHERE
				"pa"."PartyId" = "party_1"."Id" AND "pa"."Role" = 'Admin'
		)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "PartyAccess"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Party"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Task"

