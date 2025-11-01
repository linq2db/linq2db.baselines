-- Oracle.11.Managed Oracle11
DECLARE @Value1 Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce(p."Value1", MOD(p."ParentID", 2)),
	:Value1
FROM
	"Parent" p

-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- Oracle.11.Managed Oracle11
DECLARE @Value1 Int32
SET     @Value1 = 3

SELECT DISTINCT
	Coalesce(p."Value1", MOD(p."ParentID", 2)),
	:Value1
FROM
	"Parent" p

-- Oracle.11.Managed Oracle11

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

