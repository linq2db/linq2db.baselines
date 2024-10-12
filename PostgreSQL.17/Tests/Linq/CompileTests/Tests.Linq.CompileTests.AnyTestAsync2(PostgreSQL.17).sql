BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
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
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL (asynchronously)
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

