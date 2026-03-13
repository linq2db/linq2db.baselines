-- SapHana.Odbc SapHanaOdbc

UPDATE
	"SampleClass" "t"
SET
	"VarcharValue" = (
		SELECT
			Coalesce(STRING_AGG(Coalesce("a_Children"."VarcharValue", ''), ', '), '')
		FROM
			"SampleClass" "a_Children"
		WHERE
			"t"."Id" = "a_Children"."Id"
	),
	"NVarcharValue" = (
		SELECT
			Coalesce(STRING_AGG(Coalesce("a_Children"."VarcharValue", ''), ', '), '')
		FROM
			"SampleClass" "a_Children"
		WHERE
			"t"."Id" = "a_Children"."Id"
	)

