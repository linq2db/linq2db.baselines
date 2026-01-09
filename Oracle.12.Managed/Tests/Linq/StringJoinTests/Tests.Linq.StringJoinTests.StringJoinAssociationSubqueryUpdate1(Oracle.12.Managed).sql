-- Oracle.12.Managed Oracle.Managed Oracle12

UPDATE
	"SampleClass"
SET
	("VarcharValue", "NVarcharValue") = (
		SELECT
			t1."Result_1",
			t1."Result_1"
		FROM
			(
				SELECT
					(
						SELECT
							LISTAGG(a_Children."VarcharValue", ' | ') WITHIN GROUP (ORDER BY a_Children."VarcharValue")
						FROM
							"SampleClass" a_Children
						WHERE
							t_1."Id" = a_Children."Id"
					) as "Result_1",
					t_1.PK
				FROM
					"SampleClass" t_1
			) t1
		WHERE
			"SampleClass".PK = t1.PK
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

