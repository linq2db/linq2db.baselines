-- Informix.DB2 Informix
UPDATE
	UpdateRowDiagnostic
SET
	Status = (
		SELECT
			CASE
				WHEN NOT EXISTS(
					SELECT
						t1.Field1
					FROM table(set{1})
					INTERSECT
					SELECT
						UpdateRowDiagnostic.Field1
					FROM table(set{1})
				) OR NOT EXISTS(
					SELECT
						t1.Field2
					FROM table(set{1})
					INTERSECT
					SELECT
						UpdateRowDiagnostic.Field2
					FROM table(set{1})
				)
					THEN 5
				ELSE 3
			END
		FROM
			UpdateRowCheck t1
	),
	ErrorMessage = (
		SELECT
			CASE
				WHEN NOT EXISTS(
					SELECT
						t2.Field1
					FROM table(set{1})
					INTERSECT
					SELECT
						UpdateRowDiagnostic.Field1
					FROM table(set{1})
				) OR NOT EXISTS(
					SELECT
						t2.Field2
					FROM table(set{1})
					INTERSECT
					SELECT
						UpdateRowDiagnostic.Field2
					FROM table(set{1})
				)
					THEN 'bad'
				ELSE NULL
			END
		FROM
			UpdateRowCheck t2
	)
WHERE
	UpdateRowDiagnostic.Status = 0

-- Informix.DB2 Informix
SELECT
	d.Id,
	d.Status,
	d.ErrorMessage
FROM
	UpdateRowDiagnostic d
ORDER BY
	d.Id

