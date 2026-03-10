-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	(
		SELECT DISTINCT
			gr."ParentID" as "Key_1"
		FROM
			"Child" gr
	) gr_1
		CROSS APPLY (
			SELECT
				t."ParentID",
				t."ChildID"
			FROM
				"Child" t
			WHERE
				gr_1."Key_1" = t."ParentID"
			ORDER BY
				t."ChildID" DESC
			FETCH NEXT 1 ROWS ONLY
		) t1

