BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL
DECLARE @take Integer -- Int32
SET     @take = 1
DECLARE @take_1 Integer -- Int32
SET     @take_1 = 1
DECLARE @take_2 Integer -- Int32
SET     @take_2 = 1
DECLARE @take_3 Integer -- Int32
SET     @take_3 = 1
DECLARE @take_4 Integer -- Int32
SET     @take_4 = 1
DECLARE @take_5 Integer -- Int32
SET     @take_5 = 1

SELECT DISTINCT
	p."ParentID",
	p."Value1",
	t1."ParentID",
	t1."ChildID",
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" c_1
			WHERE
				c_1."ChildID" > 2
		)
			THEN True
		ELSE False
	END,
	t2."ChildID",
	t2."ParentID",
	t3."ChildID",
	t3."ParentID",
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"Child" c_2
			WHERE
				c_2."ChildID" > 2
		)
			THEN True
		ELSE False
	END,
	t2."ChildID",
	t2."ParentID",
	t3."ChildID",
	t3."ParentID",
	t4."ChildID",
	t4."ParentID",
	t5."ChildID",
	t5."ParentID",
	t6."ChildID",
	t6."ParentID"
FROM
	"Parent" p
		LEFT JOIN LATERAL (
			SELECT
				c_3."ParentID",
				c_3."ChildID"
			FROM
				"Child" c_3
			WHERE
				c_3."ParentID" = p."ParentID"
			LIMIT :take
		) t1 ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				c_4."ChildID",
				c_4."ParentID"
			FROM
				"Child" c_4
			WHERE
				c_4."ChildID" > 2 AND c_4."ParentID" >= p."ParentID"
			LIMIT :take_1
		) t2 ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				c_5."ChildID",
				c_5."ParentID"
			FROM
				"Child" c_5
			WHERE
				c_5."ChildID" > 2 AND c_5."ParentID" >= 2
			LIMIT :take_2
		) t3 ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				c_6."ChildID",
				c_6."ParentID"
			FROM
				"Child" c_6
			WHERE
				c_6."ChildID" > 2 AND c_6."ParentID" >= p."ParentID"
			LIMIT :take_3
		) t4 ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				c_7."ChildID",
				c_7."ParentID"
			FROM
				"Child" c_7
			WHERE
				c_7."ChildID" > 2 AND c_7."ParentID" >= p."ParentID"
			LIMIT :take_4
		) t5 ON 1=1
		LEFT JOIN LATERAL (
			SELECT
				c_8."ChildID",
				c_8."ParentID"
			FROM
				"Child" c_8
			WHERE
				c_8."ChildID" > 2 AND c_8."ParentID" >= p."ParentID"
			LIMIT :take_5
		) t6 ON 1=1
ORDER BY
	p."ParentID"

