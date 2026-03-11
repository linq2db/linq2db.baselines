-- Oracle.18.Managed Oracle.Managed Oracle12

UPDATE
	"SampleClass"
SET
	("VarcharValue", "NVarcharValue") = (
		SELECT
			t1."Result_1",
			t1."Result_1"
		FROM
			"SampleClass" t_1
				OUTER APPLY (
					SELECT
						LISTAGG(a_Children."VarcharValue", ' | ') WITHIN GROUP (ORDER BY a_Children."VarcharValue") as "Result_1"
					FROM
						"SampleClass" a_Children
					WHERE
						t_1."Id" = a_Children."Id"
				) t1
		WHERE
			"SampleClass".PK = t_1.PK
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"SampleClass" t
		WHERE
			"SampleClass".PK = t.PK
	)

