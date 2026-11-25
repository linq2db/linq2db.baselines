-- Oracle.11.Managed Oracle11
UPDATE
	"UpdateRowDiagnostic"
SET
	("Status", "ErrorMessage") = (
		SELECT
			CASE
				WHEN DECODE(t1."Field1", "UpdateRowDiagnostic"."Field1", 0, 1) = 1 OR DECODE(t1."Field2", "UpdateRowDiagnostic"."Field2", 0, 1) = 1
					THEN 5
				ELSE 3
			END,
			CASE
				WHEN DECODE(t1."Field1", "UpdateRowDiagnostic"."Field1", 0, 1) = 1 OR DECODE(t1."Field2", "UpdateRowDiagnostic"."Field2", 0, 1) = 1
					THEN 'bad'
				ELSE NULL
			END
		FROM
			"UpdateRowCheck" t1
	)
WHERE
	"UpdateRowDiagnostic"."Status" = 0

-- Oracle.11.Managed Oracle11
SELECT
	d."Id",
	d."Status",
	d."ErrorMessage"
FROM
	"UpdateRowDiagnostic" d
ORDER BY
	d."Id"

