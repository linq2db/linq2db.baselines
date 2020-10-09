BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT 
	g_1."Value1"
FROM
	( 
		SELECT 
			Count(*) as c1, 
			"a_Parent"."ParentID", 
			"a_Parent"."Value1"
		FROM
			"GrandChild" t1
				INNER JOIN "Parent" "a_Parent" ON t1."ParentID" = "a_Parent"."ParentID"
		GROUP BY
			"a_Parent"."ParentID",
			"a_Parent"."Value1"
	) g_1
WHERE
	g_1.c1 > 2 AND g_1."ParentID" <> 1

