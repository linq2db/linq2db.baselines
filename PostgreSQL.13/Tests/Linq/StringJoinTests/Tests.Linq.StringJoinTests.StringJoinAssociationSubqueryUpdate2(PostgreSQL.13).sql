-- PostgreSQL.13 PostgreSQL

UPDATE
	"SampleClass"
SET
	"VarcharValue" = Coalesce(t1."Result_1", ''),
	"NVarcharValue" = Coalesce(t1."Result_1", '')
FROM
	"SampleClass" t
		LEFT JOIN LATERAL (
			SELECT
				STRING_AGG(Coalesce("a_Children"."VarcharValue", ''), ', ') as "Result_1"
			FROM
				"SampleClass" "a_Children"
			WHERE
				t."Id" = "a_Children"."Id"
		) t1 ON 1=1
WHERE
	"SampleClass"."PK" = t."PK"

