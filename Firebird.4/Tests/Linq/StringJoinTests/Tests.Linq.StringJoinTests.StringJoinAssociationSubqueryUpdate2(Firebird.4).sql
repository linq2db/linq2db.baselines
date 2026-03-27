-- Firebird.4 Firebird4

UPDATE
	"SampleClass"
SET
	"VarcharValue" = Coalesce((
		SELECT
			LIST(Coalesce("a_Children"."VarcharValue", ''), ', ')
		FROM
			"SampleClass" "a_Children"
		WHERE
			"SampleClass"."Id" = "a_Children"."Id"
	), ''),
	"NVarcharValue" = Coalesce((
		SELECT
			LIST(Coalesce("a_Children_1"."VarcharValue", ''), ', ')
		FROM
			"SampleClass" "a_Children_1"
		WHERE
			"SampleClass"."Id" = "a_Children_1"."Id"
	), '')

