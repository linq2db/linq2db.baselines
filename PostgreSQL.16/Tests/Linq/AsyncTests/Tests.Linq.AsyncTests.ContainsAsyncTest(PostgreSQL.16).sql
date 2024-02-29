﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @ID Integer -- Int32
SET     @ID = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Person" t1
			WHERE
				t1."PersonID" = :ID
		)
			THEN True
		ELSE False
	END

