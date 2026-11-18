-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 3

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	(
		SELECT
			m_1."ParentID",
			m_1."Value1"
		FROM
			"Parent" m_1
		ORDER BY
			m_1."ParentID"
	) t1
WHERE
	ROWNUM <= :take
ORDER BY
	t1."ParentID"

-- Oracle.11.Managed Oracle11
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

