-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 3

SELECT DISTINCT
	p."Value1"
FROM
	"Parent" p
ORDER BY
	p."Value1" NULLS FIRST
FETCH NEXT :take ROWS ONLY

-- Oracle.21.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

