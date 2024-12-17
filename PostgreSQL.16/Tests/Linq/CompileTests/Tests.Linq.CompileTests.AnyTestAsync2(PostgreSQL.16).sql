BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" = :p
		)
			THEN True
		ELSE False
	END

BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL (asynchronously)
DECLARE @p Integer -- Int32
SET     @p = -1

SELECT
	CASE
		WHEN  EXISTS (
			SELECT
				*
			FROM
				"Child" c_1
			WHERE
				c_1."ParentID" = :p
		)
			THEN True
		ELSE False
	END

