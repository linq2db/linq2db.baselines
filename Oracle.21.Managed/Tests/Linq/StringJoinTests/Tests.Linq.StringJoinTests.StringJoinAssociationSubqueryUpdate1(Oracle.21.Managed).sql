-- Oracle.21.Managed Oracle.Managed Oracle12

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
					t_1."Id",
					t_1."NullableValue",
					t_1."NotNullableValue",
					t_1."VarcharValue",
					t_1."NVarcharValue"
				FROM
					"SampleClass" t_1
			) t1
		WHERE
			"SampleClass"."Id" = t1."Id" AND
			("SampleClass"."NullableValue" = t1."NullableValue" OR "SampleClass"."NullableValue" IS NULL AND t1."NullableValue" IS NULL) AND
			"SampleClass"."NotNullableValue" = t1."NotNullableValue" AND
			("SampleClass"."VarcharValue" = t1."VarcharValue" OR "SampleClass"."VarcharValue" IS NULL AND t1."VarcharValue" IS NULL) AND
			("SampleClass"."NVarcharValue" = t1."NVarcharValue" OR "SampleClass"."NVarcharValue" IS NULL AND t1."NVarcharValue" IS NULL)
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"SampleClass" t
		WHERE
			"SampleClass"."Id" = t."Id" AND
			("SampleClass"."NullableValue" = t."NullableValue" OR "SampleClass"."NullableValue" IS NULL AND t."NullableValue" IS NULL) AND
			"SampleClass"."NotNullableValue" = t."NotNullableValue" AND
			("SampleClass"."VarcharValue" = t."VarcharValue" OR "SampleClass"."VarcharValue" IS NULL AND t."VarcharValue" IS NULL) AND
			("SampleClass"."NVarcharValue" = t."NVarcharValue" OR "SampleClass"."NVarcharValue" IS NULL AND t."NVarcharValue" IS NULL)
	)

