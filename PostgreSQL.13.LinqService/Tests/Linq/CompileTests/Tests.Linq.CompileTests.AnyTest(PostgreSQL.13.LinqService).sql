BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
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

