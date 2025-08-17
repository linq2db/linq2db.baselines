BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	t1."ParentID",
	t1."ChildID"
FROM
	(
		SELECT
			gr."ParentID"
		FROM
			"Child" gr
		GROUP BY
			gr."ParentID"
	) gr_1
		CROSS APPLY (
			SELECT
				t."ParentID",
				t."ChildID"
			FROM
				"Child" t
			WHERE
				gr_1."ParentID" = t."ParentID"
			ORDER BY
				t."ChildID" DESC
			FETCH NEXT 1 ROWS ONLY
		) t1

