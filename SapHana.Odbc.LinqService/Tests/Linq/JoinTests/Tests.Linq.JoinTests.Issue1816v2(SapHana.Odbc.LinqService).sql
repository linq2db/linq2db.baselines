BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "stVersions"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "stVersions"
(
	"inId"     Integer NOT NULL,
	"inIdMain" Integer NOT NULL,

	PRIMARY KEY ("inId")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "rlStatesTypesAndUserGroups"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "rlStatesTypesAndUserGroups"
(
	"inIdState" Integer NOT NULL,
	"inIdType"  Integer NOT NULL,

	PRIMARY KEY ("inIdState", "inIdType")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "stMain"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "stMain"
(
	"inId"     Integer NOT NULL,
	"inIdType" Integer NOT NULL,

	PRIMARY KEY ("inId")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"v"."inId",
	"t"."inIdState",
	"a_Main"."inIdType"
FROM
	"stVersions" "v"
		INNER JOIN "stMain" "a_Main" ON "v"."inIdMain" = "a_Main"."inId"
		LEFT JOIN "rlStatesTypesAndUserGroups" "t" ON "t"."inIdType" = "a_Main"."inIdType"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "stMain"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "rlStatesTypesAndUserGroups"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "stVersions"

