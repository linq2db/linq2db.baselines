-- PostgreSQL.14 PostgreSQL.13 PostgreSQL

UPDATE
	"SampleClass"
SET
	"VarcharValue" = (
		SELECT
			Coalesce(STRING_AGG(Coalesce("a_Children"."VarcharValue", ''), ', '), '')
		FROM
			"SampleClass" "a_Children"
		WHERE
			"SampleClass"."Id" = "a_Children"."Id"
	),
	"NVarcharValue" = (
		SELECT
			Coalesce(STRING_AGG(Coalesce("a_Children"."VarcharValue", ''), ', '), '')
		FROM
			"SampleClass" "a_Children"
		WHERE
			"SampleClass"."Id" = "a_Children"."Id"
	)

