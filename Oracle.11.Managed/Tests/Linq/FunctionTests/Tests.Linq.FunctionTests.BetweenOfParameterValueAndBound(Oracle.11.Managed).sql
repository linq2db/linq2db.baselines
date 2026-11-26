-- Oracle.11.Managed Oracle11
DECLARE @value Int32
SET     @value = 3
DECLARE @low Int32
SET     @low = 0

SELECT
	p."ParentID"
FROM
	"Parent" p
WHERE
	:value BETWEEN :low AND p."ParentID"

-- Oracle.11.Managed Oracle11
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

-- Oracle.11.Managed Oracle11
DECLARE @value Int32
SET     @value = 3
DECLARE @low Int32
SET     @low = 0

SELECT
	p."ParentID"
FROM
	"Parent" p
WHERE
	:value NOT BETWEEN :low AND p."ParentID"

-- Oracle.11.Managed Oracle11
SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

