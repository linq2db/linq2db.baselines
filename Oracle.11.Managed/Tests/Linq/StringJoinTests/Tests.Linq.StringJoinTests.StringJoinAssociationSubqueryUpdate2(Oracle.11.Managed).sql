-- Oracle.11.Managed Oracle11

UPDATE
	"SampleClass" t
SET
	"VarcharValue" = Nvl((
		SELECT
			LISTAGG(Nvl(a_Children."VarcharValue", ''), ', ') WITHIN GROUP (ORDER BY a_Children."VarcharValue")
		FROM
			"SampleClass" a_Children
		WHERE
			t."Id" = a_Children."Id"
	), ''),
	"NVarcharValue" = Nvl((
		SELECT
			LISTAGG(Nvl(a_Children."VarcharValue", ''), ', ') WITHIN GROUP (ORDER BY a_Children."VarcharValue")
		FROM
			"SampleClass" a_Children
		WHERE
			t."Id" = a_Children."Id"
	), '')

