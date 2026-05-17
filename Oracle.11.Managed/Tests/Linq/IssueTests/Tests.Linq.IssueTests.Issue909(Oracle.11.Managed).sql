-- Oracle.11.Managed Oracle11

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	(p."Value1" NOT IN (1, 2, 3) OR p."Value1" IS NULL)

-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

