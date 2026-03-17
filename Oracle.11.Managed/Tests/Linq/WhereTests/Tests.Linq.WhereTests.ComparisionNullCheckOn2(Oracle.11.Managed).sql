-- Oracle.11.Managed Oracle11

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	1 <> p."Value1" OR p."Value1" IS NULL

