BeforeExecute
-- SapHana.Odbc SapHanaOdbc
DECLARE @personId  -- Int32
SET     @personId = 0
DECLARE @personId  -- Int32
SET     @personId = 2
DECLARE @personId  -- Int32
SET     @personId = 2
DECLARE @personId  -- Int32
SET     @personId = 0

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Person" "_"
			WHERE
				(
					SELECT
						COUNT(*)
					FROM
						"Patient" "_1"
					WHERE
						"_1"."PersonID" = ? AND "_1"."PersonID" NOT IN (
							SELECT
								"_2"."PersonID"
							FROM
								"Patient" "_2"
							WHERE
								"_2"."PersonID" = ?
						)
				) = 0 AND
				(
					SELECT
						COUNT(*)
					FROM
						"Patient" "_3"
					WHERE
						"_3"."PersonID" = ? AND "_3"."PersonID" NOT IN (
							SELECT
								"_4"."PersonID"
							FROM
								"Patient" "_4"
							WHERE
								"_4"."PersonID" = ?
						)
				) = 0
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

