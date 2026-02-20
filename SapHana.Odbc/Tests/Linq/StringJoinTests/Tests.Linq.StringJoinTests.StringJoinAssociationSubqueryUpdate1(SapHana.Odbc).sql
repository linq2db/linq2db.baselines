-- SapHana.Odbc SapHanaOdbc

UPDATE
	"SampleClass" "t"
SET
	"VarcharValue" = (
		SELECT
			STRING_AGG("a_Children"."VarcharValue", ' | ')
		FROM
			"SampleClass" "a_Children"
		WHERE
			"t"."Id" = "a_Children"."Id"
	),
	"NVarcharValue" = (
		SELECT
			STRING_AGG("a_Children"."VarcharValue", ' | ')
		FROM
			"SampleClass" "a_Children"
		WHERE
			"t"."Id" = "a_Children"."Id"
	)

