BeforeExecute
-- PostgreSQL.9.5 PostgreSQL

SELECT 
	g_1."ParentID"
FROM
	( 
		SELECT 
			(
				SELECT 
					Count(*)
				FROM
					"Child" "keyParam"
				WHERE
					t1."ParentID" = "keyParam"."ParentID" AND "keyParam"."ChildID" > 20
			) as ex, 
			t1."ParentID"
		FROM
			"Child" t1
		GROUP BY
			t1."ParentID"
	) g_1
WHERE
	(g_1.ex > 2 OR g_1."ParentID" > 2)

