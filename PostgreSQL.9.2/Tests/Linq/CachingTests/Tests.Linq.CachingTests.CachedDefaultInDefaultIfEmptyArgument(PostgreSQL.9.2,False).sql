-- PostgreSQL.9.2 PostgreSQL
SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
		LEFT JOIN "Parent" "a_Parent" ON x."ParentID" = "a_Parent"."ParentID"
WHERE
	NOT (("a_Parent"."ParentID" = (
		SELECT
			CASE
				WHEN d.not_null IS NOT NULL THEN d."ParentID"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t1
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_Parent_1"."ParentID"
					FROM
						"GrandChild" e
							LEFT JOIN "Child" "a_Child" ON e."ParentID" = "a_Child"."ParentID" AND e."ChildID" = "a_Child"."ChildID"
							LEFT JOIN "Parent" "a_Parent_1" ON "a_Child"."ParentID" = "a_Parent_1"."ParentID"
					WHERE
						x."ParentID" = e."ParentID" AND x."ChildID" = e."ChildID"
				) d ON 1=1
		LIMIT 1
	) OR "a_Parent"."ParentID" IS NULL AND (
		SELECT
			CASE
				WHEN d.not_null IS NOT NULL THEN d."ParentID"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t1
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_Parent_1"."ParentID"
					FROM
						"GrandChild" e
							LEFT JOIN "Child" "a_Child" ON e."ParentID" = "a_Child"."ParentID" AND e."ChildID" = "a_Child"."ChildID"
							LEFT JOIN "Parent" "a_Parent_1" ON "a_Child"."ParentID" = "a_Parent_1"."ParentID"
					WHERE
						x."ParentID" = e."ParentID" AND x."ChildID" = e."ChildID"
				) d ON 1=1
		LIMIT 1
	) IS NULL) AND NOT ("a_Parent"."ParentID" IS NULL AND (
		SELECT
			CASE
				WHEN d.not_null IS NOT NULL THEN d."ParentID"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t1
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_Parent_1"."ParentID"
					FROM
						"GrandChild" e
							LEFT JOIN "Child" "a_Child" ON e."ParentID" = "a_Child"."ParentID" AND e."ChildID" = "a_Child"."ChildID"
							LEFT JOIN "Parent" "a_Parent_1" ON "a_Child"."ParentID" = "a_Parent_1"."ParentID"
					WHERE
						x."ParentID" = e."ParentID" AND x."ChildID" = e."ChildID"
				) d ON 1=1
		LIMIT 1
	) IS NOT NULL) AND NOT ("a_Parent"."ParentID" IS NOT NULL AND (
		SELECT
			CASE
				WHEN d.not_null IS NOT NULL THEN d."ParentID"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t1
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_Parent_1"."ParentID"
					FROM
						"GrandChild" e
							LEFT JOIN "Child" "a_Child" ON e."ParentID" = "a_Child"."ParentID" AND e."ChildID" = "a_Child"."ChildID"
							LEFT JOIN "Parent" "a_Parent_1" ON "a_Child"."ParentID" = "a_Parent_1"."ParentID"
					WHERE
						x."ParentID" = e."ParentID" AND x."ChildID" = e."ChildID"
				) d ON 1=1
		LIMIT 1
	) IS NULL) AND ("a_Parent"."Value1" = (
		SELECT
			CASE
				WHEN d_1.not_null IS NOT NULL THEN d_1."Value1"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t2
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_Parent_2"."Value1"
					FROM
						"GrandChild" e_1
							LEFT JOIN "Child" "a_Child_1" ON e_1."ParentID" = "a_Child_1"."ParentID" AND e_1."ChildID" = "a_Child_1"."ChildID"
							LEFT JOIN "Parent" "a_Parent_2" ON "a_Child_1"."ParentID" = "a_Parent_2"."ParentID"
					WHERE
						x."ParentID" = e_1."ParentID" AND x."ChildID" = e_1."ChildID"
				) d_1 ON 1=1
		LIMIT 1
	) OR "a_Parent"."Value1" IS NULL AND (
		SELECT
			CASE
				WHEN d_1.not_null IS NOT NULL THEN d_1."Value1"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t2
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_Parent_2"."Value1"
					FROM
						"GrandChild" e_1
							LEFT JOIN "Child" "a_Child_1" ON e_1."ParentID" = "a_Child_1"."ParentID" AND e_1."ChildID" = "a_Child_1"."ChildID"
							LEFT JOIN "Parent" "a_Parent_2" ON "a_Child_1"."ParentID" = "a_Parent_2"."ParentID"
					WHERE
						x."ParentID" = e_1."ParentID" AND x."ChildID" = e_1."ChildID"
				) d_1 ON 1=1
		LIMIT 1
	) IS NULL) AND NOT ("a_Parent"."Value1" IS NULL AND (
		SELECT
			CASE
				WHEN d_1.not_null IS NOT NULL THEN d_1."Value1"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t2
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_Parent_2"."Value1"
					FROM
						"GrandChild" e_1
							LEFT JOIN "Child" "a_Child_1" ON e_1."ParentID" = "a_Child_1"."ParentID" AND e_1."ChildID" = "a_Child_1"."ChildID"
							LEFT JOIN "Parent" "a_Parent_2" ON "a_Child_1"."ParentID" = "a_Parent_2"."ParentID"
					WHERE
						x."ParentID" = e_1."ParentID" AND x."ChildID" = e_1."ChildID"
				) d_1 ON 1=1
		LIMIT 1
	) IS NOT NULL) AND NOT ("a_Parent"."Value1" IS NOT NULL AND (
		SELECT
			CASE
				WHEN d_1.not_null IS NOT NULL THEN d_1."Value1"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t2
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_Parent_2"."Value1"
					FROM
						"GrandChild" e_1
							LEFT JOIN "Child" "a_Child_1" ON e_1."ParentID" = "a_Child_1"."ParentID" AND e_1."ChildID" = "a_Child_1"."ChildID"
							LEFT JOIN "Parent" "a_Parent_2" ON "a_Child_1"."ParentID" = "a_Parent_2"."ParentID"
					WHERE
						x."ParentID" = e_1."ParentID" AND x."ChildID" = e_1."ChildID"
				) d_1 ON 1=1
		LIMIT 1
	) IS NULL)) AND
	CASE
		WHEN x."ParentID" = (
			SELECT
				CASE
					WHEN d_2."ChildID" IS NOT NULL THEN d_2."ChildID"
					ELSE 0
				END
			FROM
				(
					SELECT
						1 as c1
				) t3
					LEFT JOIN "Child" d_2 ON "a_Parent"."ParentID" = d_2."ParentID"
			LIMIT 1
		)
			THEN False
		ELSE True
	END

-- PostgreSQL.9.2 PostgreSQL
SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
		LEFT JOIN "Parent" "a_Parent" ON x."ParentID" = "a_Parent"."ParentID"
WHERE
	NOT (("a_Parent"."ParentID" = (
		SELECT
			CASE
				WHEN d.not_null IS NOT NULL THEN d."ParentID"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t1
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_Parent_1"."ParentID"
					FROM
						"GrandChild" e
							LEFT JOIN "Child" "a_Child" ON e."ParentID" = "a_Child"."ParentID" AND e."ChildID" = "a_Child"."ChildID"
							LEFT JOIN "Parent" "a_Parent_1" ON "a_Child"."ParentID" = "a_Parent_1"."ParentID"
					WHERE
						x."ParentID" = e."ParentID" AND x."ChildID" = e."ChildID"
				) d ON 1=1
		LIMIT 1
	) OR "a_Parent"."ParentID" IS NULL AND (
		SELECT
			CASE
				WHEN d.not_null IS NOT NULL THEN d."ParentID"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t1
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_Parent_1"."ParentID"
					FROM
						"GrandChild" e
							LEFT JOIN "Child" "a_Child" ON e."ParentID" = "a_Child"."ParentID" AND e."ChildID" = "a_Child"."ChildID"
							LEFT JOIN "Parent" "a_Parent_1" ON "a_Child"."ParentID" = "a_Parent_1"."ParentID"
					WHERE
						x."ParentID" = e."ParentID" AND x."ChildID" = e."ChildID"
				) d ON 1=1
		LIMIT 1
	) IS NULL) AND NOT ("a_Parent"."ParentID" IS NULL AND (
		SELECT
			CASE
				WHEN d.not_null IS NOT NULL THEN d."ParentID"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t1
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_Parent_1"."ParentID"
					FROM
						"GrandChild" e
							LEFT JOIN "Child" "a_Child" ON e."ParentID" = "a_Child"."ParentID" AND e."ChildID" = "a_Child"."ChildID"
							LEFT JOIN "Parent" "a_Parent_1" ON "a_Child"."ParentID" = "a_Parent_1"."ParentID"
					WHERE
						x."ParentID" = e."ParentID" AND x."ChildID" = e."ChildID"
				) d ON 1=1
		LIMIT 1
	) IS NOT NULL) AND NOT ("a_Parent"."ParentID" IS NOT NULL AND (
		SELECT
			CASE
				WHEN d.not_null IS NOT NULL THEN d."ParentID"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t1
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_Parent_1"."ParentID"
					FROM
						"GrandChild" e
							LEFT JOIN "Child" "a_Child" ON e."ParentID" = "a_Child"."ParentID" AND e."ChildID" = "a_Child"."ChildID"
							LEFT JOIN "Parent" "a_Parent_1" ON "a_Child"."ParentID" = "a_Parent_1"."ParentID"
					WHERE
						x."ParentID" = e."ParentID" AND x."ChildID" = e."ChildID"
				) d ON 1=1
		LIMIT 1
	) IS NULL) AND ("a_Parent"."Value1" = (
		SELECT
			CASE
				WHEN d_1.not_null IS NOT NULL THEN d_1."Value1"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t2
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_Parent_2"."Value1"
					FROM
						"GrandChild" e_1
							LEFT JOIN "Child" "a_Child_1" ON e_1."ParentID" = "a_Child_1"."ParentID" AND e_1."ChildID" = "a_Child_1"."ChildID"
							LEFT JOIN "Parent" "a_Parent_2" ON "a_Child_1"."ParentID" = "a_Parent_2"."ParentID"
					WHERE
						x."ParentID" = e_1."ParentID" AND x."ChildID" = e_1."ChildID"
				) d_1 ON 1=1
		LIMIT 1
	) OR "a_Parent"."Value1" IS NULL AND (
		SELECT
			CASE
				WHEN d_1.not_null IS NOT NULL THEN d_1."Value1"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t2
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_Parent_2"."Value1"
					FROM
						"GrandChild" e_1
							LEFT JOIN "Child" "a_Child_1" ON e_1."ParentID" = "a_Child_1"."ParentID" AND e_1."ChildID" = "a_Child_1"."ChildID"
							LEFT JOIN "Parent" "a_Parent_2" ON "a_Child_1"."ParentID" = "a_Parent_2"."ParentID"
					WHERE
						x."ParentID" = e_1."ParentID" AND x."ChildID" = e_1."ChildID"
				) d_1 ON 1=1
		LIMIT 1
	) IS NULL) AND NOT ("a_Parent"."Value1" IS NULL AND (
		SELECT
			CASE
				WHEN d_1.not_null IS NOT NULL THEN d_1."Value1"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t2
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_Parent_2"."Value1"
					FROM
						"GrandChild" e_1
							LEFT JOIN "Child" "a_Child_1" ON e_1."ParentID" = "a_Child_1"."ParentID" AND e_1."ChildID" = "a_Child_1"."ChildID"
							LEFT JOIN "Parent" "a_Parent_2" ON "a_Child_1"."ParentID" = "a_Parent_2"."ParentID"
					WHERE
						x."ParentID" = e_1."ParentID" AND x."ChildID" = e_1."ChildID"
				) d_1 ON 1=1
		LIMIT 1
	) IS NOT NULL) AND NOT ("a_Parent"."Value1" IS NOT NULL AND (
		SELECT
			CASE
				WHEN d_1.not_null IS NOT NULL THEN d_1."Value1"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t2
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_Parent_2"."Value1"
					FROM
						"GrandChild" e_1
							LEFT JOIN "Child" "a_Child_1" ON e_1."ParentID" = "a_Child_1"."ParentID" AND e_1."ChildID" = "a_Child_1"."ChildID"
							LEFT JOIN "Parent" "a_Parent_2" ON "a_Child_1"."ParentID" = "a_Parent_2"."ParentID"
					WHERE
						x."ParentID" = e_1."ParentID" AND x."ChildID" = e_1."ChildID"
				) d_1 ON 1=1
		LIMIT 1
	) IS NULL)) AND
	CASE
		WHEN x."ParentID" = (
			SELECT
				CASE
					WHEN d_2."ChildID" IS NOT NULL THEN d_2."ChildID"
					ELSE 0
				END
			FROM
				(
					SELECT
						1 as c1
				) t3
					LEFT JOIN "Child" d_2 ON "a_Parent"."ParentID" = d_2."ParentID"
			LIMIT 1
		)
			THEN False
		ELSE True
	END

