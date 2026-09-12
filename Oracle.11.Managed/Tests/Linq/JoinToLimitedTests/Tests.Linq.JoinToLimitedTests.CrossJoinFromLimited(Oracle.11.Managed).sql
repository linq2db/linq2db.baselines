-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 1

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
			p."ParentID" = 2 AND ROWNUM <= :take
	) p_1,
	"Child" c_1
WHERE
	c_1."ParentID" = 2

