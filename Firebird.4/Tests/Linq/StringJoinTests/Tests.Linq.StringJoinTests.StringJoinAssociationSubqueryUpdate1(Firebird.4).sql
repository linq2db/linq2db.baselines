-- Firebird.4 Firebird4

UPDATE
	"SampleClass" "t"
SET
	"VarcharValue" = (
		SELECT
			LIST("a_Children"."VarcharValue", ' | ')
		FROM
			"SampleClass" "a_Children"
		WHERE
			"t"."Id" = "a_Children"."Id"
	),
	"NVarcharValue" = (
		SELECT
			LIST("a_Children"."VarcharValue", ' | ')
		FROM
			"SampleClass" "a_Children"
		WHERE
			"t"."Id" = "a_Children"."Id"
	)

