BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	c_1."ParentID",
	c_1."ChildID"
FROM
	"Child" c_1
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Parent" p
		WHERE
			p."ParentID" = c_1."ParentID" AND Nvl(p."Value1", -1) = c_1."ParentID"
	)

