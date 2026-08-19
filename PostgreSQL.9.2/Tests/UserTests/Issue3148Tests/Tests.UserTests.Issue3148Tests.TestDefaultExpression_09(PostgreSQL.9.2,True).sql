-- PostgreSQL.9.2 PostgreSQL
SELECT
	x."ParentID",
	x."ChildID"
FROM
	"Child" x
		LEFT JOIN (
			SELECT
				"a_GrandChildren"."ParentID",
				"a_GrandChildren"."ChildID",
				"a_GrandChildren"."GrandChildID",
				ROW_NUMBER() OVER (PARTITION BY "a_GrandChildren"."ParentID", "a_GrandChildren"."ChildID" ORDER BY "a_GrandChildren"."ParentID") as rn
			FROM
				"GrandChild" "a_GrandChildren"
		) t1 ON x."ParentID" = t1."ParentID" AND x."ChildID" = t1."ChildID" AND t1.rn = 1
		LEFT JOIN "Parent" "a_Parent" ON x."ParentID" = "a_Parent"."ParentID"
WHERE
	NOT ((t1."ParentID" = (
		SELECT
			CASE
				WHEN d.not_null IS NOT NULL THEN d."ParentID"
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
						"a_GrandChildren_1"."ParentID"
					FROM
						"GrandChild" "a_GrandChildren_1"
					WHERE
						x."ParentID" = "a_GrandChildren_1"."ParentID" AND x."ChildID" = "a_GrandChildren_1"."ChildID"
				) d ON 1=1
		LIMIT 1
	) OR t1."ParentID" IS NULL AND (
		SELECT
			CASE
				WHEN d.not_null IS NOT NULL THEN d."ParentID"
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
						"a_GrandChildren_1"."ParentID"
					FROM
						"GrandChild" "a_GrandChildren_1"
					WHERE
						x."ParentID" = "a_GrandChildren_1"."ParentID" AND x."ChildID" = "a_GrandChildren_1"."ChildID"
				) d ON 1=1
		LIMIT 1
	) IS NULL) AND NOT (t1."ParentID" IS NULL AND (
		SELECT
			CASE
				WHEN d.not_null IS NOT NULL THEN d."ParentID"
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
						"a_GrandChildren_1"."ParentID"
					FROM
						"GrandChild" "a_GrandChildren_1"
					WHERE
						x."ParentID" = "a_GrandChildren_1"."ParentID" AND x."ChildID" = "a_GrandChildren_1"."ChildID"
				) d ON 1=1
		LIMIT 1
	) IS NOT NULL) AND NOT (t1."ParentID" IS NOT NULL AND (
		SELECT
			CASE
				WHEN d.not_null IS NOT NULL THEN d."ParentID"
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
						"a_GrandChildren_1"."ParentID"
					FROM
						"GrandChild" "a_GrandChildren_1"
					WHERE
						x."ParentID" = "a_GrandChildren_1"."ParentID" AND x."ChildID" = "a_GrandChildren_1"."ChildID"
				) d ON 1=1
		LIMIT 1
	) IS NULL) AND (t1."ChildID" = (
		SELECT
			CASE
				WHEN d_1.not_null IS NOT NULL THEN d_1."ChildID"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t3
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_GrandChildren_2"."ChildID"
					FROM
						"GrandChild" "a_GrandChildren_2"
					WHERE
						x."ParentID" = "a_GrandChildren_2"."ParentID" AND x."ChildID" = "a_GrandChildren_2"."ChildID"
				) d_1 ON 1=1
		LIMIT 1
	) OR t1."ChildID" IS NULL AND (
		SELECT
			CASE
				WHEN d_1.not_null IS NOT NULL THEN d_1."ChildID"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t3
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_GrandChildren_2"."ChildID"
					FROM
						"GrandChild" "a_GrandChildren_2"
					WHERE
						x."ParentID" = "a_GrandChildren_2"."ParentID" AND x."ChildID" = "a_GrandChildren_2"."ChildID"
				) d_1 ON 1=1
		LIMIT 1
	) IS NULL) AND NOT (t1."ChildID" IS NULL AND (
		SELECT
			CASE
				WHEN d_1.not_null IS NOT NULL THEN d_1."ChildID"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t3
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_GrandChildren_2"."ChildID"
					FROM
						"GrandChild" "a_GrandChildren_2"
					WHERE
						x."ParentID" = "a_GrandChildren_2"."ParentID" AND x."ChildID" = "a_GrandChildren_2"."ChildID"
				) d_1 ON 1=1
		LIMIT 1
	) IS NOT NULL) AND NOT (t1."ChildID" IS NOT NULL AND (
		SELECT
			CASE
				WHEN d_1.not_null IS NOT NULL THEN d_1."ChildID"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t3
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_GrandChildren_2"."ChildID"
					FROM
						"GrandChild" "a_GrandChildren_2"
					WHERE
						x."ParentID" = "a_GrandChildren_2"."ParentID" AND x."ChildID" = "a_GrandChildren_2"."ChildID"
				) d_1 ON 1=1
		LIMIT 1
	) IS NULL) AND (t1."GrandChildID" = (
		SELECT
			CASE
				WHEN d_2.not_null IS NOT NULL THEN d_2."GrandChildID"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t4
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_GrandChildren_3"."GrandChildID"
					FROM
						"GrandChild" "a_GrandChildren_3"
					WHERE
						x."ParentID" = "a_GrandChildren_3"."ParentID" AND x."ChildID" = "a_GrandChildren_3"."ChildID"
				) d_2 ON 1=1
		LIMIT 1
	) OR t1."GrandChildID" IS NULL AND (
		SELECT
			CASE
				WHEN d_2.not_null IS NOT NULL THEN d_2."GrandChildID"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t4
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_GrandChildren_3"."GrandChildID"
					FROM
						"GrandChild" "a_GrandChildren_3"
					WHERE
						x."ParentID" = "a_GrandChildren_3"."ParentID" AND x."ChildID" = "a_GrandChildren_3"."ChildID"
				) d_2 ON 1=1
		LIMIT 1
	) IS NULL) AND NOT (t1."GrandChildID" IS NULL AND (
		SELECT
			CASE
				WHEN d_2.not_null IS NOT NULL THEN d_2."GrandChildID"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t4
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_GrandChildren_3"."GrandChildID"
					FROM
						"GrandChild" "a_GrandChildren_3"
					WHERE
						x."ParentID" = "a_GrandChildren_3"."ParentID" AND x."ChildID" = "a_GrandChildren_3"."ChildID"
				) d_2 ON 1=1
		LIMIT 1
	) IS NOT NULL) AND NOT (t1."GrandChildID" IS NOT NULL AND (
		SELECT
			CASE
				WHEN d_2.not_null IS NOT NULL THEN d_2."GrandChildID"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t4
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_GrandChildren_3"."GrandChildID"
					FROM
						"GrandChild" "a_GrandChildren_3"
					WHERE
						x."ParentID" = "a_GrandChildren_3"."ParentID" AND x."ChildID" = "a_GrandChildren_3"."ChildID"
				) d_2 ON 1=1
		LIMIT 1
	) IS NULL)) AND
	CASE
		WHEN x."ParentID" = (
			SELECT
				CASE
					WHEN d_3."ChildID" IS NOT NULL THEN d_3."ChildID"
					ELSE 0
				END
			FROM
				(
					SELECT
						1 as c1
				) t5
					LEFT JOIN "Child" d_3 ON "a_Parent"."ParentID" = d_3."ParentID"
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
		LEFT JOIN (
			SELECT
				"a_GrandChildren"."ParentID",
				"a_GrandChildren"."ChildID",
				"a_GrandChildren"."GrandChildID",
				ROW_NUMBER() OVER (PARTITION BY "a_GrandChildren"."ParentID", "a_GrandChildren"."ChildID" ORDER BY "a_GrandChildren"."ParentID") as rn
			FROM
				"GrandChild" "a_GrandChildren"
		) t1 ON x."ParentID" = t1."ParentID" AND x."ChildID" = t1."ChildID" AND t1.rn = 1
		LEFT JOIN "Parent" "a_Parent" ON x."ParentID" = "a_Parent"."ParentID"
WHERE
	NOT ((t1."ParentID" = (
		SELECT
			CASE
				WHEN d.not_null IS NOT NULL THEN d."ParentID"
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
						"a_GrandChildren_1"."ParentID"
					FROM
						"GrandChild" "a_GrandChildren_1"
					WHERE
						x."ParentID" = "a_GrandChildren_1"."ParentID" AND x."ChildID" = "a_GrandChildren_1"."ChildID"
				) d ON 1=1
		LIMIT 1
	) OR t1."ParentID" IS NULL AND (
		SELECT
			CASE
				WHEN d.not_null IS NOT NULL THEN d."ParentID"
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
						"a_GrandChildren_1"."ParentID"
					FROM
						"GrandChild" "a_GrandChildren_1"
					WHERE
						x."ParentID" = "a_GrandChildren_1"."ParentID" AND x."ChildID" = "a_GrandChildren_1"."ChildID"
				) d ON 1=1
		LIMIT 1
	) IS NULL) AND NOT (t1."ParentID" IS NULL AND (
		SELECT
			CASE
				WHEN d.not_null IS NOT NULL THEN d."ParentID"
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
						"a_GrandChildren_1"."ParentID"
					FROM
						"GrandChild" "a_GrandChildren_1"
					WHERE
						x."ParentID" = "a_GrandChildren_1"."ParentID" AND x."ChildID" = "a_GrandChildren_1"."ChildID"
				) d ON 1=1
		LIMIT 1
	) IS NOT NULL) AND NOT (t1."ParentID" IS NOT NULL AND (
		SELECT
			CASE
				WHEN d.not_null IS NOT NULL THEN d."ParentID"
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
						"a_GrandChildren_1"."ParentID"
					FROM
						"GrandChild" "a_GrandChildren_1"
					WHERE
						x."ParentID" = "a_GrandChildren_1"."ParentID" AND x."ChildID" = "a_GrandChildren_1"."ChildID"
				) d ON 1=1
		LIMIT 1
	) IS NULL) AND (t1."ChildID" = (
		SELECT
			CASE
				WHEN d_1.not_null IS NOT NULL THEN d_1."ChildID"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t3
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_GrandChildren_2"."ChildID"
					FROM
						"GrandChild" "a_GrandChildren_2"
					WHERE
						x."ParentID" = "a_GrandChildren_2"."ParentID" AND x."ChildID" = "a_GrandChildren_2"."ChildID"
				) d_1 ON 1=1
		LIMIT 1
	) OR t1."ChildID" IS NULL AND (
		SELECT
			CASE
				WHEN d_1.not_null IS NOT NULL THEN d_1."ChildID"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t3
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_GrandChildren_2"."ChildID"
					FROM
						"GrandChild" "a_GrandChildren_2"
					WHERE
						x."ParentID" = "a_GrandChildren_2"."ParentID" AND x."ChildID" = "a_GrandChildren_2"."ChildID"
				) d_1 ON 1=1
		LIMIT 1
	) IS NULL) AND NOT (t1."ChildID" IS NULL AND (
		SELECT
			CASE
				WHEN d_1.not_null IS NOT NULL THEN d_1."ChildID"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t3
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_GrandChildren_2"."ChildID"
					FROM
						"GrandChild" "a_GrandChildren_2"
					WHERE
						x."ParentID" = "a_GrandChildren_2"."ParentID" AND x."ChildID" = "a_GrandChildren_2"."ChildID"
				) d_1 ON 1=1
		LIMIT 1
	) IS NOT NULL) AND NOT (t1."ChildID" IS NOT NULL AND (
		SELECT
			CASE
				WHEN d_1.not_null IS NOT NULL THEN d_1."ChildID"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t3
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_GrandChildren_2"."ChildID"
					FROM
						"GrandChild" "a_GrandChildren_2"
					WHERE
						x."ParentID" = "a_GrandChildren_2"."ParentID" AND x."ChildID" = "a_GrandChildren_2"."ChildID"
				) d_1 ON 1=1
		LIMIT 1
	) IS NULL) AND (t1."GrandChildID" = (
		SELECT
			CASE
				WHEN d_2.not_null IS NOT NULL THEN d_2."GrandChildID"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t4
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_GrandChildren_3"."GrandChildID"
					FROM
						"GrandChild" "a_GrandChildren_3"
					WHERE
						x."ParentID" = "a_GrandChildren_3"."ParentID" AND x."ChildID" = "a_GrandChildren_3"."ChildID"
				) d_2 ON 1=1
		LIMIT 1
	) OR t1."GrandChildID" IS NULL AND (
		SELECT
			CASE
				WHEN d_2.not_null IS NOT NULL THEN d_2."GrandChildID"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t4
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_GrandChildren_3"."GrandChildID"
					FROM
						"GrandChild" "a_GrandChildren_3"
					WHERE
						x."ParentID" = "a_GrandChildren_3"."ParentID" AND x."ChildID" = "a_GrandChildren_3"."ChildID"
				) d_2 ON 1=1
		LIMIT 1
	) IS NULL) AND NOT (t1."GrandChildID" IS NULL AND (
		SELECT
			CASE
				WHEN d_2.not_null IS NOT NULL THEN d_2."GrandChildID"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t4
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_GrandChildren_3"."GrandChildID"
					FROM
						"GrandChild" "a_GrandChildren_3"
					WHERE
						x."ParentID" = "a_GrandChildren_3"."ParentID" AND x."ChildID" = "a_GrandChildren_3"."ChildID"
				) d_2 ON 1=1
		LIMIT 1
	) IS NOT NULL) AND NOT (t1."GrandChildID" IS NOT NULL AND (
		SELECT
			CASE
				WHEN d_2.not_null IS NOT NULL THEN d_2."GrandChildID"
				ELSE NULL
			END
		FROM
			(
				SELECT
					1 as c1
			) t4
				LEFT JOIN (
					SELECT
						1 as not_null,
						"a_GrandChildren_3"."GrandChildID"
					FROM
						"GrandChild" "a_GrandChildren_3"
					WHERE
						x."ParentID" = "a_GrandChildren_3"."ParentID" AND x."ChildID" = "a_GrandChildren_3"."ChildID"
				) d_2 ON 1=1
		LIMIT 1
	) IS NULL)) AND
	CASE
		WHEN x."ParentID" = (
			SELECT
				CASE
					WHEN d_3."ChildID" IS NOT NULL THEN d_3."ChildID"
					ELSE 0
				END
			FROM
				(
					SELECT
						1 as c1
				) t5
					LEFT JOIN "Child" d_3 ON "a_Parent"."ParentID" = d_3."ParentID"
			LIMIT 1
		)
			THEN False
		ELSE True
	END

