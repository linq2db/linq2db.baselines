BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12 (asynchronously)

SELECT
	(
		SELECT
			COUNT(*)
		FROM
			"Child" ch_1
		WHERE
			p."ParentID" = ch_1."ParentID"
	),
	t1."ParentID",
	t1."ChildID"
FROM
	"Parent" p
		CROSS APPLY (
			SELECT
				ch."ParentID",
				ch."ChildID"
			FROM
				"Child" ch
			WHERE
				p."ParentID" = ch."ParentID"
			FETCH NEXT 1 ROWS ONLY
		) t1
WHERE
	p."ParentID" = 1

