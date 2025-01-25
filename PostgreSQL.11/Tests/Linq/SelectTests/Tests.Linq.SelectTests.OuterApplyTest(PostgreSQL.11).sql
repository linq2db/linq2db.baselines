BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT
	t6."ParentID_6",
	t6."Value1",
	t6."ParentID",
	t6."ChildID",
	t6."Any_1",
	t6."ChildID_1",
	t6."ParentID_1",
	t6."ChildID_2",
	t6."ParentID_2",
	t6."ChildID_3",
	t6."ParentID_3",
	t6."ChildID_4",
	t6."ParentID_4",
	t6."ChildID_5",
	t6."ParentID_5"
FROM
	(
		SELECT DISTINCT
			c1_1."ParentID",
			c1_1."ChildID",
			t1."ChildID" as "ChildID_1",
			t1."ParentID" as "ParentID_1",
			t2."ChildID" as "ChildID_2",
			t2."ParentID" as "ParentID_2",
			t3."ChildID" as "ChildID_3",
			t3."ParentID" as "ParentID_3",
			t4."ChildID" as "ChildID_4",
			t4."ParentID" as "ParentID_4",
			t5."ChildID" as "ChildID_5",
			t5."ParentID" as "ParentID_5",
			p."ParentID" as "ParentID_6",
			p."Value1",
			CASE
				WHEN EXISTS(
					SELECT
						*
					FROM
						"Child" c_6
					WHERE
						c_6."ChildID" > 2
				)
					THEN True
				ELSE False
			END as "Any_1"
		FROM
			"Parent" p
				LEFT JOIN LATERAL (
					SELECT
						c1."ParentID",
						c1."ChildID"
					FROM
						"Child" c1
					WHERE
						c1."ParentID" = p."ParentID"
					LIMIT 1
				) c1_1 ON 1=1
				LEFT JOIN LATERAL (
					SELECT
						c_1."ChildID",
						c_1."ParentID"
					FROM
						"Child" c_1
					WHERE
						c_1."ChildID" > 2 AND c_1."ParentID" >= p."ParentID"
					LIMIT 1
				) t1 ON 1=1
				LEFT JOIN (
					SELECT
						c_2."ChildID",
						c_2."ParentID"
					FROM
						"Child" c_2
					WHERE
						c_2."ChildID" > 2 AND c_2."ParentID" >= 2
					LIMIT 1
				) t2 ON 1=1
				LEFT JOIN LATERAL (
					SELECT
						c_3."ChildID",
						c_3."ParentID"
					FROM
						"Child" c_3
					WHERE
						c_3."ChildID" > 2 AND c_3."ParentID" >= p."ParentID"
					LIMIT 1
				) t3 ON 1=1
				LEFT JOIN LATERAL (
					SELECT
						c_4."ChildID",
						c_4."ParentID"
					FROM
						"Child" c_4
					WHERE
						c_4."ChildID" > 2 AND c_4."ParentID" >= p."ParentID"
					LIMIT 1
				) t4 ON 1=1
				LEFT JOIN LATERAL (
					SELECT
						c_5."ChildID",
						c_5."ParentID"
					FROM
						"Child" c_5
					WHERE
						c_5."ChildID" > 2 AND c_5."ParentID" >= p."ParentID"
					LIMIT 1
				) t5 ON 1=1
	) t6
ORDER BY
	t6."ParentID_6"

