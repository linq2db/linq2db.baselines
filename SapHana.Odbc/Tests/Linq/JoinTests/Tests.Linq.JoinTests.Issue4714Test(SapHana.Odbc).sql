BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Sample"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Sample"
(
	"SampleId" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Source"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "Source"
(
	"Key1" Integer NOT NULL,
	"Key2" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SelectionMap"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "SelectionMap"
(
	"Key1"              Integer NOT NULL,
	"Key2"              Integer NOT NULL,
	"SelectionProperty" Decimal NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "YearMap"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "YearMap"
(
	"StartDate" Timestamp NOT NULL,
	"EndDate"   Timestamp NOT NULL,
	"Year"      Integer   NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"source_2"."Id",
	"year_1"."Year",
	"year_1"."StartDate",
	"year_1"."EndDate"
FROM
	"YearMap" "year_1"
		CROSS JOIN (
			SELECT
				"entity"."SampleId" as "Id"
			FROM
				"Source" "source_1"
					INNER JOIN "SelectionMap" "map_1" ON "source_1"."Key1" = "map_1"."Key1" AND "source_1"."Key2" = "map_1"."Key2",
				"Sample" "entity"
		) "source_2"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "YearMap"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SelectionMap"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Source"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "Sample"

