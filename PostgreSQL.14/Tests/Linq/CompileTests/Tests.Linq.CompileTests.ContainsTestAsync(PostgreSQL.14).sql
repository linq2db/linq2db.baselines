-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = 1

SELECT
	CASE
		WHEN :p IN (
			SELECT
				c_1."ParentID"
			FROM
				"Child" c_1
		)
			THEN True
		ELSE False
	END

-- PostgreSQL.14 PostgreSQL.13 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = -1

SELECT
	CASE
		WHEN :p IN (
			SELECT
				c_1."ParentID"
			FROM
				"Child" c_1
		)
			THEN True
		ELSE False
	END

