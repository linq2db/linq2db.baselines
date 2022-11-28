BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @personId_1 Int32
SET     @personId_1 = 2

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Person" t1
			WHERE
				(
					SELECT
						COUNT(t2."PersonID")
					FROM
						"Patient" t2
					WHERE
						t2."PersonID" IS NULL AND NOT EXISTS(
							SELECT
								*
							FROM
								"Patient" t3
							WHERE
								t3."PersonID" = :personId_1 AND t3."PersonID" = t2."PersonID"
						)
				) = 0 AND
				(
					SELECT
						COUNT(t4."PersonID")
					FROM
						"Patient" t4
					WHERE
						t4."PersonID" = :personId_1 AND NOT EXISTS(
							SELECT
								*
							FROM
								"Patient" t5
							WHERE
								t5."PersonID" IS NULL AND t5."PersonID" = t4."PersonID"
						)
				) = 0
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

