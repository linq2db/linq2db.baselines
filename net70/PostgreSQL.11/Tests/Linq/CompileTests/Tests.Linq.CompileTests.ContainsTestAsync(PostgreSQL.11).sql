BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @p_1 Integer -- Int32
SET     @p_1 = 1

SELECT
	CASE
		WHEN :p_1 IN (
			SELECT
				c_1."ParentID"
			FROM
				"Child" c_1
		)
			THEN True
		ELSE False
	END

BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL (asynchronously)
DECLARE @p_1 Integer -- Int32
SET     @p_1 = -1

SELECT
	CASE
		WHEN :p_1 IN (
			SELECT
				c_1."ParentID"
			FROM
				"Child" c_1
		)
			THEN True
		ELSE False
	END

