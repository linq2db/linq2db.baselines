BeforeExecute
-- PostgreSQL.18 PostgreSQL
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

BeforeExecute
-- PostgreSQL.18 PostgreSQL
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

