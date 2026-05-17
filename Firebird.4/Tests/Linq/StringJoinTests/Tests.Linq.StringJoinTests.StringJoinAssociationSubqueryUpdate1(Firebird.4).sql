-- Firebird.4 Firebird4

UPDATE
	"SampleClass"
SET
	"VarcharValue" = (
		SELECT
			LIST("a_Children"."VarcharValue", ' | ')
		FROM
			"SampleClass" "a_Children"
		WHERE
			"SampleClass"."Id" = "a_Children"."Id"
	),
	"NVarcharValue" = (
		SELECT
			LIST("a_Children_1"."VarcharValue", ' | ')
		FROM
			"SampleClass" "a_Children_1"
		WHERE
			"SampleClass"."Id" = "a_Children_1"."Id"
	)

