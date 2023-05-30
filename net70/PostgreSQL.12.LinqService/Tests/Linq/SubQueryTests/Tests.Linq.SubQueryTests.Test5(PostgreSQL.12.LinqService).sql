BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @_testValue Integer -- Int32
SET     @_testValue = 3

SELECT
	t1.c1,
	(
		SELECT
			Count(*)
		FROM
			"Child" p
		WHERE
			p."ParentID" = t1.c1
	),
	(
		SELECT
			Count(*)
		FROM
			"Child" p_1
		WHERE
			p_1."ParentID" = t1.c1 AND p_1."ParentID" = :_testValue
	)
FROM
	(
		SELECT DISTINCT
			CASE
				WHEN id."Value1" IS NULL THEN id."ParentID"
				ELSE id."ParentID" + 1
			END as c1
		FROM
			"Parent" id
		WHERE
			id."ParentID" IN (1, 2)
	) t1

