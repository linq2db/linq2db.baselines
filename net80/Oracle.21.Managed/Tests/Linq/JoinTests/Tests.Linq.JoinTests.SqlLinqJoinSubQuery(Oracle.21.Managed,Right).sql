BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 10

SELECT
	p_1."ParentID",
	c_1."ChildID"
FROM
	(
		SELECT
			p."ParentID"
		FROM
			"Parent" p
		WHERE
			p."ParentID" > 0
		FETCH NEXT :take ROWS ONLY
	) p_1
		RIGHT JOIN "Child" c_1 ON p_1."ParentID" = c_1."ParentID"

