﻿BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" = :ParentID
		)
			THEN True
		ELSE False
	END

BeforeExecute
-- PostgreSQL.9.2 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = -1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" = :ParentID
		)
			THEN True
		ELSE False
	END

