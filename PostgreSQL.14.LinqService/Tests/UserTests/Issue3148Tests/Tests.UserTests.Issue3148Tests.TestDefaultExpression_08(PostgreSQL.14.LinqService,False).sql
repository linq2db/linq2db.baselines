﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
		LEFT JOIN "Parent" "a_Parent" ON x."ParentID" = "a_Parent"."ParentID"
		LEFT JOIN LATERAL (
			SELECT
				CASE
					WHEN d.not_null IS NOT NULL THEN d."ParentID"
					ELSE NULL
				END as "ParentID",
				CASE
					WHEN d.not_null IS NOT NULL THEN d."Value1"
					ELSE NULL
				END as "Value1"
			FROM
				(
					SELECT
						1 as c1
				) t1
					LEFT JOIN (
						SELECT
							1 as not_null,
							"a_Parent_1"."ParentID",
							"a_Parent_1"."Value1"
						FROM
							"GrandChild" e
								LEFT JOIN "Child" "a_Child" ON e."ParentID" = "a_Child"."ParentID" AND e."ChildID" = "a_Child"."ChildID"
								LEFT JOIN "Parent" "a_Parent_1" ON "a_Child"."ParentID" = "a_Parent_1"."ParentID"
						WHERE
							x."ParentID" = e."ParentID" AND x."ChildID" = e."ChildID"
					) d ON 1=1
			LIMIT 1
		) t2 ON 1=1
WHERE
	NOT (("a_Parent"."ParentID" = t2."ParentID" OR "a_Parent"."ParentID" IS NULL AND t2."ParentID" IS NULL) AND NOT ("a_Parent"."ParentID" IS NULL AND t2."ParentID" IS NOT NULL) AND NOT ("a_Parent"."ParentID" IS NOT NULL AND t2."ParentID" IS NULL) AND ("a_Parent"."Value1" = t2."Value1" OR "a_Parent"."Value1" IS NULL AND t2."Value1" IS NULL) AND NOT ("a_Parent"."Value1" IS NULL AND t2."Value1" IS NOT NULL) AND NOT ("a_Parent"."Value1" IS NOT NULL AND t2."Value1" IS NULL)) AND
	CASE
		WHEN x."ParentID" = (
			SELECT
				CASE
					WHEN d_1."ChildID" IS NOT NULL THEN d_1."ChildID"
					ELSE 0
				END
			FROM
				(
					SELECT
						1 as c1
				) t3
					LEFT JOIN "Child" d_1 ON "a_Parent"."ParentID" = d_1."ParentID"
			LIMIT 1
		)
			THEN False
		ELSE True
	END

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
		LEFT JOIN "Parent" "a_Parent" ON x."ParentID" = "a_Parent"."ParentID"
		LEFT JOIN LATERAL (
			SELECT
				CASE
					WHEN d.not_null IS NOT NULL THEN d."ParentID"
					ELSE NULL
				END as "ParentID",
				CASE
					WHEN d.not_null IS NOT NULL THEN d."Value1"
					ELSE NULL
				END as "Value1"
			FROM
				(
					SELECT
						1 as c1
				) t1
					LEFT JOIN (
						SELECT
							1 as not_null,
							"a_Parent_1"."ParentID",
							"a_Parent_1"."Value1"
						FROM
							"GrandChild" e
								LEFT JOIN "Child" "a_Child" ON e."ParentID" = "a_Child"."ParentID" AND e."ChildID" = "a_Child"."ChildID"
								LEFT JOIN "Parent" "a_Parent_1" ON "a_Child"."ParentID" = "a_Parent_1"."ParentID"
						WHERE
							x."ParentID" = e."ParentID" AND x."ChildID" = e."ChildID"
					) d ON 1=1
			LIMIT 1
		) t2 ON 1=1
WHERE
	NOT (("a_Parent"."ParentID" = t2."ParentID" OR "a_Parent"."ParentID" IS NULL AND t2."ParentID" IS NULL) AND NOT ("a_Parent"."ParentID" IS NULL AND t2."ParentID" IS NOT NULL) AND NOT ("a_Parent"."ParentID" IS NOT NULL AND t2."ParentID" IS NULL) AND ("a_Parent"."Value1" = t2."Value1" OR "a_Parent"."Value1" IS NULL AND t2."Value1" IS NULL) AND NOT ("a_Parent"."Value1" IS NULL AND t2."Value1" IS NOT NULL) AND NOT ("a_Parent"."Value1" IS NOT NULL AND t2."Value1" IS NULL)) AND
	CASE
		WHEN x."ParentID" = (
			SELECT
				CASE
					WHEN d_1."ChildID" IS NOT NULL THEN d_1."ChildID"
					ELSE 0
				END
			FROM
				(
					SELECT
						1 as c1
				) t3
					LEFT JOIN "Child" d_1 ON "a_Parent"."ParentID" = d_1."ParentID"
			LIMIT 1
		)
			THEN False
		ELSE True
	END

