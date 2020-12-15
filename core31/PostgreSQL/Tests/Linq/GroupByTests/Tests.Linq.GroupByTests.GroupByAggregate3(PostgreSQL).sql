BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Key_1"
FROM
	(
		SELECT
			CASE
				WHEN (
					SELECT
						Avg(c_1."ParentID")
					FROM
						"Child" c_1
					WHERE
						"selectParam"."ParentID" = c_1."ParentID"
				) > 3
					THEN True
				ELSE False
			END as "Key_1"
		FROM
			"Parent" "selectParam"
	) t1
GROUP BY
	t1."Key_1"

BeforeExecute
-- PostgreSQL PostgreSQL.9.5 PostgreSQL
DECLARE @p_1 Boolean
SET     @p_1 = False

SELECT
	underscore."ParentID",
	underscore."Value1"
FROM
	(
		SELECT
			CASE
				WHEN (
					SELECT
						Avg(c_1."ParentID")
					FROM
						"Child" c_1
					WHERE
						"selectParam"."ParentID" = c_1."ParentID"
				) > 3
					THEN True
				ELSE False
			END as "Key_1",
			"selectParam"."ParentID",
			"selectParam"."Value1"
		FROM
			"Parent" "selectParam"
	) underscore
WHERE
	underscore."Key_1" = :p_1

