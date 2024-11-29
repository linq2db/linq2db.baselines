BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN t1."ParentID" IS NOT NULL THEN t1."ChildID"
		ELSE 0
	END
FROM
	"Parent" employee
		LEFT JOIN "GrandChild" names_1 ON employee."ParentID" = names_1."ParentID"
		OUTER APPLY (
			SELECT
				a_Children."ParentID",
				a_Children."ChildID"
			FROM
				"Child" a_Children
			WHERE
				employee."ParentID" = a_Children."ParentID"
			FETCH NEXT 1 ROWS ONLY
		) t1

