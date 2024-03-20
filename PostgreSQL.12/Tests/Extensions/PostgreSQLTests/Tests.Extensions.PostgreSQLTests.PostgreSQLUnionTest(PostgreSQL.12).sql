BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL

SELECT
	t1."ParentID",
	t1."ParentID",
	t1."Value1",
	t1.c1,
	t1."ParentID_1",
	t1."Value1_1",
	Cast(NULL as Int),
	Cast(NULL as Int)
FROM
	(
		(
			SELECT
				p."ParentID",
				p."Value1",
				Cast(NULL as Int) as c1,
				Cast(NULL as Int) as "ParentID_1",
				Cast(NULL as Int) as "Value1_1"
			FROM
				"Parent" p
			FOR SHARE
		)
		UNION
		SELECT
			Cast(NULL as Int) as "ParentID",
			Cast(NULL as Int) as "Value1",
			"a_Parent"."ParentID" as c1,
			"a_Parent"."ParentID" as "ParentID_1",
			"a_Parent"."Value1" as "Value1_1"
		FROM
			"Child" c_1
				LEFT JOIN "Parent" "a_Parent" ON c_1."ParentID" = "a_Parent"."ParentID"
	) t1
UNION
(
	SELECT
		Cast(NULL as Int),
		Cast(NULL as Int),
		Cast(NULL as Int),
		Cast(NULL as Int),
		Cast(NULL as Int),
		Cast(NULL as Int),
		t2."ParentID",
		t2."Value1"
	FROM
		"Parent" t2
			CROSS JOIN (
				SELECT
					*
				FROM
					"Child" c_2
				FOR SHARE
			) c_3
	FOR SHARE
)

