﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Parent" p
		)
			THEN True
		ELSE False
	END

