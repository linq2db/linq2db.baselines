﻿BeforeExecute
-- Firebird.5 Firebird4
DECLARE @personId Integer -- Int32
SET     @personId = 2

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
						COUNT("t2"."PersonID")
					FROM
						"Patient" "t2"
					WHERE
						"t2"."PersonID" IS NULL AND NOT EXISTS(
							SELECT
								*
							FROM
								"Patient" "t3"
							WHERE
								"t3"."PersonID" = @personId AND "t3"."PersonID" = "t2"."PersonID"
						)
				) = 0 AND
				(
					SELECT
						COUNT("t4"."PersonID")
					FROM
						"Patient" "t4"
					WHERE
						"t4"."PersonID" = @personId AND NOT EXISTS(
							SELECT
								*
							FROM
								"Patient" "t5"
							WHERE
								"t5"."PersonID" IS NULL AND "t5"."PersonID" = "t4"."PersonID"
						)
				) = 0
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

