-- Oracle.11.Managed Oracle11

SELECT
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" <= 2
ORDER BY
	p."ParentID"

