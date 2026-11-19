-- PostgreSQL.9.5 PostgreSQL
UPDATE
	"UpdateRowDiagnostic"
SET
	("Status", "ErrorMessage") = (
		SELECT
			CASE
				WHEN error.c1 OR error.c2 THEN 5
				ELSE 3
			END,
			CASE
				WHEN error.c1 OR error.c2 THEN 'bad'
				ELSE NULL
			END
		FROM
			"UpdateRowCheck" t1
				LEFT JOIN LATERAL (
					SELECT
						t1."Field1" IS DISTINCT FROM "UpdateRowDiagnostic"."Field1" as c1,
						t1."Field2" IS DISTINCT FROM "UpdateRowDiagnostic"."Field2" as c2
				) error ON 1=1
	)
WHERE
	"UpdateRowDiagnostic"."Status" = 0

-- PostgreSQL.9.5 PostgreSQL
SELECT
	d."Id",
	d."Status",
	d."ErrorMessage"
FROM
	"UpdateRowDiagnostic" d
ORDER BY
	d."Id"

