﻿BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = NULL
DECLARE @p_1 Integer -- Int32
SET     @p_1 = NULL
DECLARE @p_2 Integer -- Int32
SET     @p_2 = NULL

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
		LEFT JOIN LATERAL (
			SELECT
				CASE
					WHEN d.not_null IS NOT NULL THEN d."ParentID"
					ELSE :p
				END as "ParentID",
				CASE
					WHEN d.not_null IS NOT NULL THEN d."ChildID"
					ELSE :p_1
				END as "ChildID",
				CASE
					WHEN d.not_null IS NOT NULL THEN d."GrandChildID"
					ELSE :p_2
				END as "GrandChildID"
			FROM
				(
					SELECT
						1 as c1
				) t2
					LEFT JOIN (
						SELECT
							1 as not_null,
							"a_GrandChildren_1"."ParentID",
							"a_GrandChildren_1"."ChildID",
							"a_GrandChildren_1"."GrandChildID"
						FROM
							"GrandChild" "a_GrandChildren_1"
						WHERE
							x."ParentID" = "a_GrandChildren_1"."ParentID" AND x."ChildID" = "a_GrandChildren_1"."ChildID"
					) d ON 1=1
			LIMIT 1
		) t3 ON 1=1
WHERE
	NOT ((t1."ParentID" = t3."ParentID" OR t1."ParentID" IS NULL AND t3."ParentID" IS NULL) AND (t1."ChildID" = t3."ChildID" OR t1."ChildID" IS NULL AND t3."ChildID" IS NULL) AND (t1."GrandChildID" = t3."GrandChildID" OR t1."GrandChildID" IS NULL AND t3."GrandChildID" IS NULL)) AND
	(x."ParentID" <> (
		SELECT
			CASE
				WHEN d_1."ChildID" IS NOT NULL THEN d_1."ChildID"
				ELSE 0
			END
		FROM
			(
				SELECT
					0 as c1
			) t4
				LEFT JOIN "Child" d_1 ON "a_Parent"."ParentID" IS NOT NULL AND "a_Parent"."ParentID" = d_1."ParentID"
		LIMIT 1
	) OR (
		SELECT
			CASE
				WHEN d_1."ChildID" IS NOT NULL THEN d_1."ChildID"
				ELSE 0
			END
		FROM
			(
				SELECT
					0 as c1
			) t4
				LEFT JOIN "Child" d_1 ON "a_Parent"."ParentID" IS NOT NULL AND "a_Parent"."ParentID" = d_1."ParentID"
		LIMIT 1
	) IS NULL)

BeforeExecute
-- PostgreSQL.13 PostgreSQL.9.5 PostgreSQL
DECLARE @p Integer -- Int32
SET     @p = NULL
DECLARE @p_1 Integer -- Int32
SET     @p_1 = NULL
DECLARE @p_2 Integer -- Int32
SET     @p_2 = NULL

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
		LEFT JOIN LATERAL (
			SELECT
				CASE
					WHEN d.not_null IS NOT NULL THEN d."ParentID"
					ELSE :p
				END as "ParentID",
				CASE
					WHEN d.not_null IS NOT NULL THEN d."ChildID"
					ELSE :p_1
				END as "ChildID",
				CASE
					WHEN d.not_null IS NOT NULL THEN d."GrandChildID"
					ELSE :p_2
				END as "GrandChildID"
			FROM
				(
					SELECT
						1 as c1
				) t2
					LEFT JOIN (
						SELECT
							1 as not_null,
							"a_GrandChildren_1"."ParentID",
							"a_GrandChildren_1"."ChildID",
							"a_GrandChildren_1"."GrandChildID"
						FROM
							"GrandChild" "a_GrandChildren_1"
						WHERE
							x."ParentID" = "a_GrandChildren_1"."ParentID" AND x."ChildID" = "a_GrandChildren_1"."ChildID"
					) d ON 1=1
			LIMIT 1
		) t3 ON 1=1
WHERE
	NOT ((t1."ParentID" = t3."ParentID" OR t1."ParentID" IS NULL AND t3."ParentID" IS NULL) AND (t1."ChildID" = t3."ChildID" OR t1."ChildID" IS NULL AND t3."ChildID" IS NULL) AND (t1."GrandChildID" = t3."GrandChildID" OR t1."GrandChildID" IS NULL AND t3."GrandChildID" IS NULL)) AND
	(x."ParentID" <> (
		SELECT
			CASE
				WHEN d_1."ChildID" IS NOT NULL THEN d_1."ChildID"
				ELSE 0
			END
		FROM
			(
				SELECT
					0 as c1
			) t4
				LEFT JOIN "Child" d_1 ON "a_Parent"."ParentID" IS NOT NULL AND "a_Parent"."ParentID" = d_1."ParentID"
		LIMIT 1
	) OR (
		SELECT
			CASE
				WHEN d_1."ChildID" IS NOT NULL THEN d_1."ChildID"
				ELSE 0
			END
		FROM
			(
				SELECT
					0 as c1
			) t4
				LEFT JOIN "Child" d_1 ON "a_Parent"."ParentID" IS NOT NULL AND "a_Parent"."ParentID" = d_1."ParentID"
		LIMIT 1
	) IS NULL)

