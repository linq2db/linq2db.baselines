﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Parent" p
			WHERE
				p."ParentID" = 1 AND p."ParentID" = :ParentID
		)
			THEN True
		ELSE False
	END

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 2

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Parent" p
			WHERE
				p."ParentID" = 1 AND p."ParentID" = :ParentID
		)
			THEN True
		ELSE False
	END

