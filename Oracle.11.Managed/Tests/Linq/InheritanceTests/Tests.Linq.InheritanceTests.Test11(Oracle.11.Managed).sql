-- Oracle.11.Managed Oracle11

SELECT
	p."Value1",
	p."ParentID"
FROM
	"Parent" p
WHERE
	p."Value1" = 2 OR p."Value1" = 1

