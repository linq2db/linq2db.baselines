BeforeExecute
-- SapHana.Odbc SapHanaOdbc

CREATE COLUMN TABLE "SampleClass"
(
	"Id"    Integer NOT NULL,
	"Value" Integer NOT NULL
)

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Add_Days(CURRENT_TIMESTAMP, "t"."Value"),
	Add_Days(CURRENT_TIMESTAMP, 2)
FROM
	"SampleClass" "t"
WHERE
	"t"."Value" = 1
UNION
SELECT
	Add_Days(CURRENT_TIMESTAMP, 3),
	Add_Days(CURRENT_TIMESTAMP, 4)
FROM DUMMY

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	"v"."Value2"
FROM
	(
		SELECT
			Add_Days(CURRENT_TIMESTAMP, "t"."Value") as "Value1",
			Add_Days(CURRENT_TIMESTAMP, 2) as "Value2"
		FROM
			"SampleClass" "t"
		WHERE
			"t"."Value" = 1
		UNION
		SELECT
			Add_Days(CURRENT_TIMESTAMP, 3) as "Value1",
			Add_Days(CURRENT_TIMESTAMP, 4) as "Value2"
FROM DUMMY
	) "v"

BeforeExecute
-- SapHana.Odbc SapHanaOdbc

DROP TABLE "SampleClass"

