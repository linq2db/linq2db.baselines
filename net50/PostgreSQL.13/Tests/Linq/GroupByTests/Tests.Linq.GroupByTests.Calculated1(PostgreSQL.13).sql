BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."Key_1"
FROM
	(
		SELECT
			CASE
				WHEN "selectParam"."ParentID" > 2
					THEN CASE
					WHEN "selectParam"."ParentID" > 3
						THEN '1'
					ELSE '2'
				END
				ELSE '3'
			END as "Key_1"
		FROM
			"Child" "selectParam"
	) t1
GROUP BY
	t1."Key_1"

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p_1 Text(1) -- String
SET     @p_1 = '1'

SELECT
	underscore."ParentID",
	underscore."ChildID"
FROM
	(
		SELECT
			CASE
				WHEN "selectParam"."ParentID" > 2
					THEN CASE
					WHEN "selectParam"."ParentID" > 3
						THEN '1'
					ELSE '2'
				END
				ELSE '3'
			END as "Key_1",
			"selectParam"."ParentID",
			"selectParam"."ChildID"
		FROM
			"Child" "selectParam"
	) underscore
WHERE
	underscore."Key_1" = :p_1

