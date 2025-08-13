BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	Coalesce("t1"."EnumNullable", "t1"."Enum")
FROM
	"ValueConversion" "t1"

