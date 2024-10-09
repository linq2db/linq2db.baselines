BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "i1084_person"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "i1084_person"
(
	"Id"            Integer NOT NULL,
	"Number"        Integer NOT NULL,
	"StatusBitmask" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "i1084_student"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "i1084_student"
(
	"Id"            Integer       NOT NULL,
	"Number"        NVarChar(255)     NULL,
	"StatusBitmask" Integer       NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CASE
		WHEN BITAND("k_1"."StatusBitmask", 128) <> 0 THEN 1
		ELSE 0
	END,
	CASE
		WHEN BITAND("g_1"."StatusBitmask", 128) <> 0 OR "g_1"."StatusBitmask" IS NULL
			THEN 1
		ELSE 0
	END
FROM
	"i1084_person" "k_1"
		LEFT JOIN "i1084_student" "g_1" ON "k_1"."Id" = "g_1"."Id" AND CAST("k_1"."Number" AS NVarChar(11)) = "g_1"."Number"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "i1084_student"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "i1084_person"

