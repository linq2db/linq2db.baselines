-- DB2 DB2.LUW DB2LUW

UPDATE
	"SampleClass" "t"
SET
	"VarcharValue" = (
		SELECT
			LISTAGG("a_Children"."VarcharValue", ' | ')
		FROM
			"SampleClass" "a_Children"
		WHERE
			"t"."Id" = "a_Children"."Id"
	),
	"NVarcharValue" = (
		SELECT
			LISTAGG("a_Children"."VarcharValue", ' | ')
		FROM
			"SampleClass" "a_Children"
		WHERE
			"t"."Id" = "a_Children"."Id"
	)

