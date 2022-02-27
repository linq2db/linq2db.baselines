BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 1

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	(
		SELECT
			1
		FROM
			"Child" t1
		WHERE
			p."ParentID" = t1."ParentID"
		FETCH NEXT :take ROWS ONLY
	) IS NOT NULL

