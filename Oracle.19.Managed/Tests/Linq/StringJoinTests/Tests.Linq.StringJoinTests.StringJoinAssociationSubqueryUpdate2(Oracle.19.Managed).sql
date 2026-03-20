-- Oracle.19.Managed Oracle.Managed Oracle12

UPDATE
	"SampleClass" t
SET
	("VarcharValue", "NVarcharValue") = (
		SELECT
			t1."Result_1",
			t1."Result_1"
		FROM
			(
				SELECT
					LISTAGG(Coalesce(a_Children."VarcharValue", ''), ', ') WITHIN GROUP (ORDER BY a_Children."VarcharValue") as "Result_1"
				FROM
					"SampleClass" a_Children
				WHERE
					t."Id" = a_Children."Id"
			) t1
	)

