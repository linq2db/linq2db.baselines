-- Firebird.2.5 Firebird

UPDATE
	"SampleClass" "t"
SET
	"VarcharValue" = (
		SELECT
			Coalesce(LIST(Coalesce("a_Children"."VarcharValue", ''), ', '), '')
		FROM
			"SampleClass" "a_Children"
		WHERE
			"t"."Id" = "a_Children"."Id"
	),
	"NVarcharValue" = (
		SELECT
			Coalesce(LIST(Coalesce("a_Children"."VarcharValue", ''), ', '), '')
		FROM
			"SampleClass" "a_Children"
		WHERE
			"t"."Id" = "a_Children"."Id"
	)

