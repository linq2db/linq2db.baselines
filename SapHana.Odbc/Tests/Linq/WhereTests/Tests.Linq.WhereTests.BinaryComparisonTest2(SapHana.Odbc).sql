﻿BeforeExecute
-- SapHana.Odbc SapHanaOdbc

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Person" "t1"
			WHERE
				CASE
					WHEN "t1"."FirstName" = "t1"."FirstName" THEN 1
					ELSE 0
				END <> CASE
					WHEN ("t1"."MiddleName" <> "t1"."LastName" OR "t1"."MiddleName" IS NULL)
						THEN 1
					ELSE 0
				END
		)
			THEN 1
		ELSE 0
	END
FROM DUMMY

