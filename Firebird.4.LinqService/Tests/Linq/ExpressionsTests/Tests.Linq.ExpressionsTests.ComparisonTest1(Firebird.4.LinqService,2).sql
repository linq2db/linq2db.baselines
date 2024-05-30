BeforeExecute
-- Firebird.4 Firebird4
DECLARE @personId Integer -- Int32
SET     @personId = 0
DECLARE @personId_1 Integer -- Int32
SET     @personId_1 = 2

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Person" "t7"
					CROSS JOIN (
						SELECT
							COUNT("t1"."PersonID") as "c1"
						FROM
							"Patient" "t1"
						WHERE
							"t1"."PersonID" = @personId AND NOT EXISTS(
								SELECT
									*
								FROM
									"Patient" "t2"
								WHERE
									"t2"."PersonID" = @personId_1 AND "t1"."PersonID" = "t2"."PersonID"
							)
					) "t3"
					CROSS JOIN (
						SELECT
							COUNT("t4"."PersonID") as "c1"
						FROM
							"Patient" "t4"
						WHERE
							"t4"."PersonID" = @personId_1 AND NOT EXISTS(
								SELECT
									*
								FROM
									"Patient" "t5"
								WHERE
									"t5"."PersonID" = @personId AND "t4"."PersonID" = "t5"."PersonID"
							)
					) "t6"
			WHERE
				"t3"."c1" = 0 AND "t6"."c1" = 0
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

