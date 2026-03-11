-- PostgreSQL.18 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" c_1
		WHERE
			c_1."ParentID" = :p
	)

-- PostgreSQL.18 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = -1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"Child" c_1
		WHERE
			c_1."ParentID" = :p
	)

