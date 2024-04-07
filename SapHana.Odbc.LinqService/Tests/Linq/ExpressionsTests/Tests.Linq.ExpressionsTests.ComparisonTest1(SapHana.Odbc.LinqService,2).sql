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
				"Person" "_4"
					CROSS JOIN (
						SELECT
							COUNT("_"."PersonID") as "c1"
						FROM
							"Patient" "_"
						WHERE
							"_"."PersonID" = ? AND "_"."PersonID" NOT IN (
								SELECT
									"_1"."PersonID"
								FROM
									"Patient" "_1"
								WHERE
									"_1"."PersonID" = ?
							)
					) "t1"
					CROSS JOIN (
						SELECT
							COUNT("_2"."PersonID") as "c1"
						FROM
							"Patient" "_2"
						WHERE
							"_2"."PersonID" = ? AND "_2"."PersonID" NOT IN (
								SELECT
									"_3"."PersonID"
								FROM
									"Patient" "_3"
								WHERE
									"_3"."PersonID" = ?
							)
					) "t2"
			WHERE
				"t1"."c1" = 0 AND "t2"."c1" = 0
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

