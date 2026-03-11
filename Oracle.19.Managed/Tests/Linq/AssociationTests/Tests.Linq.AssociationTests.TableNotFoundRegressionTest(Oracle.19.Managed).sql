-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"GrandChild" r
					LEFT JOIN "Child" a_Child ON r."ParentID" = a_Child."ParentID" AND r."ChildID" = a_Child."ChildID"
					LEFT JOIN "Parent" a_Parent ON a_Child."ParentID" = a_Parent."ParentID"
			WHERE
				a_Parent."ParentID" = 1
		)
			THEN 1
		ELSE 0
	END
FROM SYS.DUAL

