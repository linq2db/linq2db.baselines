-- Firebird.3 Firebird3

UPDATE
	"SampleClass" "t"
SET
	"VarcharValue" = Coalesce((
		SELECT
			LIST(Coalesce("a_Children"."VarcharValue", ''), ', ')
		FROM
			"SampleClass" "a_Children"
		WHERE
			"t"."Id" = "a_Children"."Id"
	), ''),
	"NVarcharValue" = Coalesce((
		SELECT
			LIST(Coalesce("a_Children"."VarcharValue", ''), ', ')
		FROM
			"SampleClass" "a_Children"
		WHERE
			"t"."Id" = "a_Children"."Id"
	), '')

