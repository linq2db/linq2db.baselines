BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
		LEFT JOIN "Parent" "a_Parent" ON x."ParentID" = "a_Parent"."ParentID"
		LEFT JOIN LATERAL (
			SELECT
				"a_GrandChildren"."ParentID",
				"a_GrandChildren"."ChildID",
				"a_GrandChildren"."GrandChildID"
			FROM
				"GrandChild" "a_GrandChildren"
			WHERE
				x."ParentID" = "a_GrandChildren"."ParentID" AND x."ChildID" = "a_GrandChildren"."ChildID"
			LIMIT 1
		) t1 ON 1=1
WHERE
	(t1."ParentID" = t1."ParentID" OR t1."ParentID" IS NULL AND t1."ParentID" IS NULL OR t1."ChildID" = t1."ChildID" OR t1."ChildID" IS NULL AND t1."ChildID" IS NULL OR t1."GrandChildID" = t1."GrandChildID" OR t1."GrandChildID" IS NULL AND t1."GrandChildID" IS NULL) AND
	(x."ParentID" <> (
		SELECT
			"a_Children"."ChildID"
		FROM
			"Child" "a_Children"
		WHERE
			"a_Parent"."ParentID" = "a_Children"."ParentID"
		LIMIT 1
	) OR (
		SELECT
			"a_Children"."ChildID"
		FROM
			"Child" "a_Children"
		WHERE
			"a_Parent"."ParentID" = "a_Children"."ParentID"
		LIMIT 1
	) IS NULL)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
		LEFT JOIN "Parent" "a_Parent" ON x."ParentID" = "a_Parent"."ParentID"
		LEFT JOIN LATERAL (
			SELECT
				"a_GrandChildren"."ParentID",
				"a_GrandChildren"."ChildID",
				"a_GrandChildren"."GrandChildID"
			FROM
				"GrandChild" "a_GrandChildren"
			WHERE
				x."ParentID" = "a_GrandChildren"."ParentID" AND x."ChildID" = "a_GrandChildren"."ChildID"
			LIMIT 1
		) t1 ON 1=1
WHERE
	(t1."ParentID" = t1."ParentID" OR t1."ParentID" IS NULL AND t1."ParentID" IS NULL OR t1."ChildID" = t1."ChildID" OR t1."ChildID" IS NULL AND t1."ChildID" IS NULL OR t1."GrandChildID" = t1."GrandChildID" OR t1."GrandChildID" IS NULL AND t1."GrandChildID" IS NULL) AND
	(x."ParentID" <> (
		SELECT
			"a_Children"."ChildID"
		FROM
			"Child" "a_Children"
		WHERE
			"a_Parent"."ParentID" = "a_Children"."ParentID"
		LIMIT 1
	) OR (
		SELECT
			"a_Children"."ChildID"
		FROM
			"Child" "a_Children"
		WHERE
			"a_Parent"."ParentID" = "a_Children"."ParentID"
		LIMIT 1
	) IS NULL)

