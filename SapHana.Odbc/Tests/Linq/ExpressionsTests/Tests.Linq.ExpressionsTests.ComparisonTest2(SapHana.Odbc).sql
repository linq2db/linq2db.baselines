BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @personId Int -- Int32
SET     @personId = 0
DECLARE @personId Int -- Int32
SET     @personId = 2
DECLARE @personId Int -- Int32
SET     @personId = 2
DECLARE @personId Int -- Int32
SET     @personId = 0

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Person" "t1"
			WHERE
				(
					SELECT
						COUNT(*)
					FROM
						"Patient" "t2"
					WHERE
						"t2"."PersonID" = ? AND "t2"."PersonID" NOT IN (
							SELECT
								"t3"."PersonID"
							FROM
								"Patient" "t3"
							WHERE
								"t3"."PersonID" = ?
						)
				) = 0 AND
				(
					SELECT
						COUNT(*)
					FROM
						"Patient" "t4"
					WHERE
						"t4"."PersonID" = ? AND "t4"."PersonID" NOT IN (
							SELECT
								"t5"."PersonID"
							FROM
								"Patient" "t5"
							WHERE
								"t5"."PersonID" = ?
						)
				) = 0
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

