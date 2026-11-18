-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @take Int32
SET     @take = 3

SELECT
	m_1."ParentID",
	m_1."Value1"
FROM
	"Parent" m_1
ORDER BY
	m_1."ParentID"
FETCH NEXT :take ROWS ONLY

-- Oracle.12.Managed Oracle.Managed Oracle12
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

