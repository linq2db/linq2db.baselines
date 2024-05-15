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
	"subcc"."CountCondoCategories",
	"subct"."CountCondoTags",
	"l"."LocationName",
	"l"."Id"
FROM
	"Condos" "c_1"
		INNER JOIN "Locations" "l" ON "c_1"."LocationId" = "l"."Id"
		LEFT JOIN (
			SELECT
				"g2"."CondoId",
				COUNT(*) as "CountCondoTags"
			FROM
				"CondoTags" "g2"
			GROUP BY
				"g2"."CondoId"
		) "subct" ON "c_1"."Id" = "subct"."CondoId"
		LEFT JOIN (
			SELECT
				"g1"."CondoId",
				COUNT(*) as "CountCondoCategories"
			FROM
				"CategoryCondos" "g1"
			GROUP BY
				"g1"."CondoId"
		) "subcc" ON "c_1"."Id" = "subcc"."CondoId"

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

