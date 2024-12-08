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
				"Person" "t7"
					CROSS JOIN (
						SELECT
							COUNT("t1"."PersonID") as "cond"
						FROM
							"Patient" "t1"
						WHERE
							"t1"."PersonID" = ? AND "t1"."PersonID" NOT IN (
								SELECT
									"t2"."PersonID"
								FROM
									"Patient" "t2"
								WHERE
									"t2"."PersonID" = ?
							)
					) "t3"
					CROSS JOIN (
						SELECT
							COUNT("t4"."PersonID") as "cond"
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
					) "t6"
			WHERE
				"t3"."cond" = 0 AND "t6"."cond" = 0
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

