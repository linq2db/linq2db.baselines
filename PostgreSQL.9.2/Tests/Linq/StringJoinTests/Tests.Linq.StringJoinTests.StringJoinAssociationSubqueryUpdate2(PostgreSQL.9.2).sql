-- PostgreSQL.9.2 PostgreSQL
UPDATE
	"SampleClass"
SET
	"VarcharValue" = Coalesce((
		SELECT
			STRING_AGG(Coalesce("a_Children"."VarcharValue", ''), ', ')
		FROM
			"SampleClass" "a_Children"
		WHERE
			"SampleClass"."Id" = "a_Children"."Id"
	), ''),
	"NVarcharValue" = Coalesce((
		SELECT
			STRING_AGG(Coalesce("a_Children"."VarcharValue", ''), ', ')
		FROM
			"SampleClass" "a_Children"
		WHERE
			"SampleClass"."Id" = "a_Children"."Id"
	), '')

