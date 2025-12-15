-- Firebird.3 Firebird3

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

