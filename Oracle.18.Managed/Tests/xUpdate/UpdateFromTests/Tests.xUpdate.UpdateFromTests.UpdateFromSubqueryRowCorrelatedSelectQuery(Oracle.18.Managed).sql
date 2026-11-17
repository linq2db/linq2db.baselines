-- Oracle.18.Managed Oracle.Managed Oracle12
UPDATE
	"UpdateRowDiagnostic" d
SET
	("Status", "ErrorMessage") = (
		SELECT
			CASE
				WHEN error."c1" = 1 OR error."c2" = 1 THEN 5
				ELSE 3
			END,
			CASE
				WHEN error."c1" = 1 OR error."c2" = 1 THEN 'bad'
				ELSE NULL
			END
		FROM
			"UpdateRowCheck" t1
				OUTER APPLY (
					SELECT
						CASE
							WHEN DECODE(t1."Field1", d."Field1", 0, 1) = 1 THEN 1
							ELSE 0
						END as "c1",
						CASE
							WHEN DECODE(t1."Field2", d."Field2", 0, 1) = 1 THEN 1
							ELSE 0
						END as "c2"
					FROM SYS.DUAL
				) error
	)
WHERE
	d."Status" = 0

-- Oracle.18.Managed Oracle.Managed Oracle12
SELECT
	d."Id",
	d."Status",
	d."ErrorMessage"
FROM
	"UpdateRowDiagnostic" d
ORDER BY
	d."Id"

