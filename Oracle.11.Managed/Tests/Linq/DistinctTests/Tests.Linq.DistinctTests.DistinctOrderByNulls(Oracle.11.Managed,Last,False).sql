-- Oracle.11.Managed Oracle11
DECLARE @take Int32
SET     @take = 3

SELECT
	t1."Value1"
FROM
	(
		SELECT DISTINCT
			p."Value1"
		FROM
			"Parent" p
		ORDER BY
			p."Value1"
	) t1
WHERE
	ROWNUM <= :take
ORDER BY
	t1."Value1"

-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

