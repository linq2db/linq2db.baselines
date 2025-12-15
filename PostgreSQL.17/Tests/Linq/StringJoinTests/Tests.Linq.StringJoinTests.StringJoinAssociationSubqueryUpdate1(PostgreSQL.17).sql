-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

UPDATE
	"SampleClass"
SET
	"VarcharValue" = t1."Result_1",
	"NVarcharValue" = t1."Result_1"
FROM
	"SampleClass" t
		LEFT JOIN LATERAL (
			SELECT
				STRING_AGG("a_Children"."VarcharValue", ' | ') as "Result_1"
			FROM
				"SampleClass" "a_Children"
			WHERE
				t."Id" = "a_Children"."Id"
		) t1 ON 1=1
WHERE
	"SampleClass"."Id" = t."Id" AND
	("SampleClass"."NullableValue" = t."NullableValue" OR "SampleClass"."NullableValue" IS NULL AND t."NullableValue" IS NULL) AND
	"SampleClass"."NotNullableValue" = t."NotNullableValue" AND
	("SampleClass"."VarcharValue" = t."VarcharValue" OR "SampleClass"."VarcharValue" IS NULL AND t."VarcharValue" IS NULL) AND
	("SampleClass"."NVarcharValue" = t."NVarcharValue" OR "SampleClass"."NVarcharValue" IS NULL AND t."NVarcharValue" IS NULL)

