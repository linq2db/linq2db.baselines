BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Condos"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Condos"
(
	"Id"         Integer NOT NULL,
	"LocationId" Integer NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "CategoryCondos"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "CategoryCondos"
(
	"CategoryId" Integer NOT NULL,
	"CondoId"    Integer NOT NULL,

	PRIMARY KEY ("CategoryId", "CondoId")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "CondoTags"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "CondoTags"
(
	"CondoId" Integer NOT NULL,
	"TagId"   Integer NOT NULL,

	PRIMARY KEY ("CondoId", "TagId")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Locations"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Locations"
(
	"Id"           Integer       NOT NULL,
	"LocationName" NVarChar(100) NOT NULL,

	PRIMARY KEY ("Id")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"c_1"."Id",
	"c_1"."LocationId",
	"t2"."CountCondoCategories",
	"t1"."CountCondoTags",
	"l"."LocationName",
	"l"."Id"
FROM
	"Condos" "c_1"
		INNER JOIN "Locations" "l" ON "c_1"."LocationId" = "l"."Id"
		LEFT JOIN (
			SELECT
				"ctleft"."CondoId" as "subct",
				Count(*) as "CountCondoTags"
			FROM
				"CondoTags" "ctleft"
			GROUP BY
				"ctleft"."CondoId"
		) "t1" ON "c_1"."Id" = "t1"."subct"
		LEFT JOIN (
			SELECT
				"ccleft"."CondoId" as "subcc",
				Count(*) as "CountCondoCategories"
			FROM
				"CategoryCondos" "ccleft"
			GROUP BY
				"ccleft"."CondoId"
		) "t2" ON "c_1"."Id" = "t2"."subcc"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Locations"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "CondoTags"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "CategoryCondos"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Condos"

