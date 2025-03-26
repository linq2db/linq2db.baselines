BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @p Int32
SET     @p = 1

SELECT
	r."ParentID",
	r."Value1"
FROM
	"Parent" r
WHERE
	r."ParentID" = :p

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

