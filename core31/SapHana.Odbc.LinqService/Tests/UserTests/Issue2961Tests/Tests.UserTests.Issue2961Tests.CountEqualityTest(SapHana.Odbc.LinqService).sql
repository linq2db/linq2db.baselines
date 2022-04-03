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

CREATE COLUMN TABLE "CategoryCondos"
(
	"CategoryId" Integer NOT NULL,
	"CondoId"    Integer NOT NULL,

	PRIMARY KEY ("CategoryId", "CondoId")
)

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
	"ccleft"."CountCondoCategories",
	"ctleft"."CountCondoTags",
	"l"."LocationName",
	"l"."Id"
FROM
	"Condos" "c_1"
		INNER JOIN "Locations" "l" ON "c_1"."LocationId" = "l"."Id"
		LEFT JOIN (
			SELECT
				"t1"."CondoId",
				Count(*) as "CountCondoTags"
			FROM
				"CondoTags" "t1"
			GROUP BY
				"t1"."CondoId"
		) "ctleft" ON "c_1"."Id" = "ctleft"."CondoId"
		LEFT JOIN (
			SELECT
				"t2"."CondoId",
				Count(*) as "CountCondoCategories"
			FROM
				"CategoryCondos" "t2"
			GROUP BY
				"t2"."CondoId"
		) "ccleft" ON "c_1"."Id" = "ccleft"."CondoId"

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

