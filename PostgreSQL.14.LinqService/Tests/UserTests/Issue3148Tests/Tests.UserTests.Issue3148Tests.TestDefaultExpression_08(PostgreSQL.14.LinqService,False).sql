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
				"a_Parent_1"."ParentID",
				"a_Parent_1"."Value1"
			FROM
				"GrandChild" "a_GrandChildren"
					LEFT JOIN "Child" "a_Child" ON "a_GrandChildren"."ParentID" = "a_Child"."ParentID" AND "a_GrandChildren"."ChildID" = "a_Child"."ChildID"
					LEFT JOIN "Parent" "a_Parent_1" ON "a_Child"."ParentID" = "a_Parent_1"."ParentID"
			WHERE
				x."ParentID" = "a_GrandChildren"."ParentID" AND x."ChildID" = "a_GrandChildren"."ChildID"
			LIMIT 1
		) t1 ON 1=1
WHERE
	NOT (("a_Parent"."ParentID" = t1."ParentID" OR "a_Parent"."ParentID" IS NULL AND t1."ParentID" IS NULL) AND NOT ("a_Parent"."ParentID" IS NULL AND t1."ParentID" IS NOT NULL) AND NOT (t1."ParentID" IS NULL AND "a_Parent"."ParentID" IS NOT NULL) AND ("a_Parent"."Value1" = t1."Value1" OR "a_Parent"."Value1" IS NULL AND t1."Value1" IS NULL) AND NOT ("a_Parent"."Value1" IS NULL AND t1."Value1" IS NOT NULL) AND NOT (t1."Value1" IS NULL AND "a_Parent"."Value1" IS NOT NULL)) AND
	(x."ParentID" <> (
		SELECT
			CASE
				WHEN "a_Children"."ChildID" IS NOT NULL THEN "a_Children"."ChildID"
				ELSE 0
			END
		FROM
			"Child" "a_Children"
		WHERE
			"a_Parent"."ParentID" = "a_Children"."ParentID"
		LIMIT 1
	) OR (
		SELECT
			CASE
				WHEN "a_Children"."ChildID" IS NOT NULL THEN "a_Children"."ChildID"
				ELSE 0
			END
		FROM
			"Child" "a_Children"
		WHERE
			"a_Parent"."ParentID" = "a_Children"."ParentID"
		LIMIT 1
	) IS NULL)

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
				"a_Parent_1"."ParentID",
				"a_Parent_1"."Value1"
			FROM
				"GrandChild" "a_GrandChildren"
					LEFT JOIN "Child" "a_Child" ON "a_GrandChildren"."ParentID" = "a_Child"."ParentID" AND "a_GrandChildren"."ChildID" = "a_Child"."ChildID"
					LEFT JOIN "Parent" "a_Parent_1" ON "a_Child"."ParentID" = "a_Parent_1"."ParentID"
			WHERE
				x."ParentID" = "a_GrandChildren"."ParentID" AND x."ChildID" = "a_GrandChildren"."ChildID"
			LIMIT 1
		) t1 ON 1=1
WHERE
	NOT (("a_Parent"."ParentID" = t1."ParentID" OR "a_Parent"."ParentID" IS NULL AND t1."ParentID" IS NULL) AND NOT ("a_Parent"."ParentID" IS NULL AND t1."ParentID" IS NOT NULL) AND NOT (t1."ParentID" IS NULL AND "a_Parent"."ParentID" IS NOT NULL) AND ("a_Parent"."Value1" = t1."Value1" OR "a_Parent"."Value1" IS NULL AND t1."Value1" IS NULL) AND NOT ("a_Parent"."Value1" IS NULL AND t1."Value1" IS NOT NULL) AND NOT (t1."Value1" IS NULL AND "a_Parent"."Value1" IS NOT NULL)) AND
	(x."ParentID" <> (
		SELECT
			CASE
				WHEN "a_Children"."ChildID" IS NOT NULL THEN "a_Children"."ChildID"
				ELSE 0
			END
		FROM
			"Child" "a_Children"
		WHERE
			"a_Parent"."ParentID" = "a_Children"."ParentID"
		LIMIT 1
	) OR (
		SELECT
			CASE
				WHEN "a_Children"."ChildID" IS NOT NULL THEN "a_Children"."ChildID"
				ELSE 0
			END
		FROM
			"Child" "a_Children"
		WHERE
			"a_Parent"."ParentID" = "a_Children"."ParentID"
		LIMIT 1
	) IS NULL)

