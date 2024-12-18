BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "DisTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "DisTable"
(
	"DisTypeID" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "JurTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "JurTable"
(
	"JurCode" NVarChar(2) NOT NULL,

	PRIMARY KEY ("JurCode")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "DisTypeTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "DisTypeTable"
(
	"DisTypeID" Integer      NOT NULL,
	"JurCode"   NVarChar(50) NOT NULL,

	PRIMARY KEY ("DisTypeID")
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"d"."DisTypeID"
FROM
	"DisTable" "d"
		INNER JOIN "DisTypeTable" "a_DisType" ON CASE
			WHEN "d"."DisTypeID" = 1 THEN 1
			WHEN "d"."DisTypeID" = 2 THEN 2
			WHEN "d"."DisTypeID" = 4 THEN 4
			WHEN "d"."DisTypeID" = 5 THEN 5
		END = "a_DisType"."DisTypeID" AND CASE
			WHEN "d"."DisTypeID" = 1 THEN 1
			WHEN "d"."DisTypeID" = 2 THEN 2
			WHEN "d"."DisTypeID" = 4 THEN 4
			WHEN "d"."DisTypeID" = 5 THEN 5
		END IS NOT NULL
		INNER JOIN "JurTable" "j" ON "a_DisType"."JurCode" = "j"."JurCode"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "DisTypeTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "JurTable"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "DisTable"

