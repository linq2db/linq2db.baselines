-- SapHana.Odbc SapHanaOdbc

UPDATE
	"SampleClass"
SET
	"VarcharValue" = (
		SELECT
			(
				SELECT
					Coalesce(STRING_AGG(Coalesce("a_Children"."VarcharValue", ''), ', '), '')
				FROM
					"SampleClass" "a_Children"
				WHERE
					"t_1"."Id" = "a_Children"."Id"
			)
		FROM
			"SampleClass" "t_1"
		WHERE
			"SampleClass"."PK" = "t_1"."PK"
	),
	"NVarcharValue" = (
		SELECT
			(
				SELECT
					Coalesce(STRING_AGG(Coalesce("a_Children_1"."VarcharValue", ''), ', '), '')
				FROM
					"SampleClass" "a_Children_1"
				WHERE
					"t_2"."Id" = "a_Children_1"."Id"
			)
		FROM
			"SampleClass" "t_2"
		WHERE
			"SampleClass"."PK" = "t_2"."PK"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"SampleClass" "t"
		WHERE
			"SampleClass"."PK" = "t"."PK"
	)

