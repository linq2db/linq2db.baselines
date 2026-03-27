-- SapHana.Odbc SapHanaOdbc

UPDATE
	"SampleClass"
SET
	"VarcharValue" = (
		SELECT
			STRING_AGG("a_Children"."VarcharValue", ' | ')
		FROM
			"SampleClass" "a_Children"
		WHERE
			"SampleClass"."Id" = "a_Children"."Id"
	),
	"NVarcharValue" = (
		SELECT
			STRING_AGG("a_Children_1"."VarcharValue", ' | ')
		FROM
			"SampleClass" "a_Children_1"
		WHERE
			"SampleClass"."Id" = "a_Children_1"."Id"
	)

