BeforeExecute
-- PostgreSQL.11 PostgreSQL.9.5 PostgreSQL

SELECT 
	"a_Child"."ParentID", 
	"a_Child"."ChildID"
FROM
	( 
		SELECT DISTINCT 
			p."ParentID" as p, 
			p."Value1" as p_1
		FROM
			"Parent" p
				INNER JOIN "GrandChild" c_1 ON p."ParentID" = c_1."ParentID"
				INNER JOIN "LinqDataTypes" t ON c_1."ParentID" = t."ID"
		WHERE
			p."ParentID" = 1 AND t."ID" > 1 AND t."ID" > 2
		ORDER BY
			p."ParentID"
	) p_1
		INNER JOIN "GrandChild" g_1 ON p_1.p = g_1."ParentID"
		LEFT JOIN "Child" "a_Child" ON g_1."ParentID" = "a_Child"."ParentID" AND g_1."ChildID" = "a_Child"."ChildID",
	"Parent" c_2
WHERE
	p_1.p = g_1."ParentID" AND g_1."ParentID" = c_2."ParentID" AND
	"a_Child"."ChildID" = 1

