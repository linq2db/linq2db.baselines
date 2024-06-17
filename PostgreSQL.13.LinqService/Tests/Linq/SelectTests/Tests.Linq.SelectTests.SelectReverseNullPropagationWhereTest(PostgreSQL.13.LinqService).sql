BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = NULL
DECLARE @p_1 Integer -- Int32
SET     @p_1 = NULL
DECLARE @p_2 Integer -- Int32
SET     @p_2 = NULL

SELECT
	p."ParentID",
	CASE
		WHEN p."ParentID" IS NOT NULL THEN p."Value1"
		ELSE :p
	END,
	CASE
		WHEN c_1."ParentID" IS NOT NULL THEN CASE
			WHEN "a_Parent"."ParentID" IS NOT NULL THEN "a_Parent"."Value1"
			ELSE :p_1
		END
		ELSE :p_2
	END
FROM
	"Parent" p
		INNER JOIN "Child" c_1 ON c_1."ParentID" = p."ParentID"
		LEFT JOIN "Parent" "a_Parent" ON c_1."ParentID" = "a_Parent"."ParentID"
WHERE
	(p."ParentID" > 0 OR p."Value1" > 0 OR "a_Parent"."Value1" > 0)

