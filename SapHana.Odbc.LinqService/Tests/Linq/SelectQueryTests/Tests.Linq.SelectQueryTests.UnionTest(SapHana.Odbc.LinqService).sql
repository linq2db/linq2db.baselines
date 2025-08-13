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
	"v_1"."Value2"
FROM
	(
		SELECT
			Add_Days(CURRENT_TIMESTAMP, "v"."Value") as "Value1",
			Add_Days(CURRENT_TIMESTAMP, 2) as "Value2"
		FROM
			"SampleClass" "v"
		WHERE
			"v"."Value" = 1
		UNION
		SELECT
			Add_Days(CURRENT_TIMESTAMP, 3) as "Value1",
			Add_Days(CURRENT_TIMESTAMP, 4) as "Value2"
FROM DUMMY
	) "v_1"

