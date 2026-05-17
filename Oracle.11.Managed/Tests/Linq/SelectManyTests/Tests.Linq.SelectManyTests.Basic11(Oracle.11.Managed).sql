-- Oracle.11.Managed Oracle11

SELECT
	o."ParentID"
FROM
	(
		SELECT DISTINCT
			a_ParentID2."ParentID" as "ParentID2",
			a_ParentID2."Value1"
		FROM
			"Child" t1
				INNER JOIN "Parent" a_ParentID2 ON t1."ParentID" = a_ParentID2."ParentID"
	) g_1
		CROSS JOIN "Child" o
		INNER JOIN "Parent" a_ParentID2_1 ON o."ParentID" = a_ParentID2_1."ParentID" AND (a_ParentID2_1."Value1" = g_1."Value1" OR a_ParentID2_1."Value1" IS NULL AND g_1."Value1" IS NULL) AND a_ParentID2_1."ParentID" = g_1."ParentID2"

