-- Oracle.19.Managed Oracle.Managed Oracle12

UPDATE
	"SampleClass" t
SET
	"VarcharValue" = (
		SELECT
			Coalesce(LISTAGG(Coalesce(a_Children."VarcharValue", ''), ', ') WITHIN GROUP (ORDER BY a_Children."VarcharValue"), '')
		FROM
			"SampleClass" a_Children
		WHERE
			t."Id" = a_Children."Id"
	),
	"NVarcharValue" = (
		SELECT
			Coalesce(LISTAGG(Coalesce(a_Children."VarcharValue", ''), ', ') WITHIN GROUP (ORDER BY a_Children."VarcharValue"), '')
		FROM
			"SampleClass" a_Children
		WHERE
			t."Id" = a_Children."Id"
	)

