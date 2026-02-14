-- Oracle.11.Managed Oracle11

UPDATE
	"SampleClass" t
SET
	"VarcharValue" = (
		SELECT
			Coalesce(LISTAGG(Coalesce(a_Children."VarcharValue", ''), ', ') WITHIN GROUP (ORDER BY a_Children."VarcharValue"), '') as "Result_1"
		FROM
			"SampleClass" a_Children
		WHERE
			t."Id" = a_Children."Id"
	),
	"NVarcharValue" = (
		SELECT
			Coalesce(LISTAGG(Coalesce(a_Children."VarcharValue", ''), ', ') WITHIN GROUP (ORDER BY a_Children."VarcharValue"), '') as "Result_1"
		FROM
			"SampleClass" a_Children
		WHERE
			t."Id" = a_Children."Id"
	)

