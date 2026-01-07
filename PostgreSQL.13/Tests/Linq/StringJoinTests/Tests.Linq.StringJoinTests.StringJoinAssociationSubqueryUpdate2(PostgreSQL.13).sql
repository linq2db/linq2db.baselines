-- PostgreSQL.13 PostgreSQL

UPDATE
	"SampleClass"
SET
	"VarcharValue" = t1."Result_1",
	"NVarcharValue" = t1."Result_1"
FROM
	"SampleClass" t
		LEFT JOIN LATERAL (
			SELECT
				Coalesce(STRING_AGG(Coalesce("a_Children"."VarcharValue", ''), ', '), '') as "Result_1"
			FROM
				"SampleClass" "a_Children"
			WHERE
				t."Id" = "a_Children"."Id"
		) t1 ON 1=1
WHERE
	"SampleClass"."PK" = t."PK"

