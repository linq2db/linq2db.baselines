-- PostgreSQL.16 PostgreSQL.15 PostgreSQL

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
			STRING_AGG("a_Children"."VarcharValue", ' | ')
		FROM
			"SampleClass" "a_Children"
		WHERE
			"SampleClass"."Id" = "a_Children"."Id"
	)

