﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL

SELECT
	f."Label",
	f."SubSum",
	f.c2,
	f."Count_1"
FROM
	(
		SELECT
			' ' || Cast(Coalesce(e."Value1", 0) as text) as c1,
			(
				SELECT
					Sum(c_1."ChildID")
				FROM
					"Child" c_1
						LEFT JOIN "Parent" "a_Parent" ON c_1."ParentID" = "a_Parent"."ParentID"
				WHERE
					"a_Parent"."ParentID" = e."ParentID" AND ("a_Parent"."Value1" = e."Value1" OR "a_Parent"."Value1" IS NULL AND e."Value1" IS NULL)
			) as "SubSum",
			Coalesce(e."Value1", 0) as "Label",
			CASE
				WHEN EXISTS(
					SELECT
						*
					FROM
						"Child" c_2
							LEFT JOIN "Parent" "a_Parent_1" ON c_2."ParentID" = "a_Parent_1"."ParentID"
					WHERE
						"a_Parent_1"."ParentID" = e."ParentID" AND ("a_Parent_1"."Value1" = e."Value1" OR "a_Parent_1"."Value1" IS NULL AND e."Value1" IS NULL)
				)
					THEN True
				ELSE False
			END as c2,
			(
				SELECT
					Count(*)
				FROM
					"Child" p
						LEFT JOIN "Parent" "a_Parent_2" ON p."ParentID" = "a_Parent_2"."ParentID"
				WHERE
					"a_Parent_2"."ParentID" = e."ParentID" AND ("a_Parent_2"."Value1" = e."Value1" OR "a_Parent_2"."Value1" IS NULL AND e."Value1" IS NULL)
			) as "Count_1"
		FROM
			"Parent" e
	) f
WHERE
	f.c1 LIKE '%1%' ESCAPE '~' AND f."SubSum" > 0

