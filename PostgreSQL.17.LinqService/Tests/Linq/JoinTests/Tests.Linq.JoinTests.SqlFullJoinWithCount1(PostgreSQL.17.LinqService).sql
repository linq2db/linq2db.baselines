BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL

SELECT
	t1.c1
FROM
	(
		SELECT
			CASE
				WHEN COUNT(left_1."ParentID") = COUNT(right_1."ParentID") AND COUNT(left_1."ParentID") = COUNT(*)
					THEN True
				ELSE False
			END as c1
		FROM
			"Parent" left_1
				FULL JOIN "Parent" right_1 ON right_1."ParentID" = left_1."ParentID"
	) t1
LIMIT 2

