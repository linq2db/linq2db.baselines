BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 1

SELECT
	x."ParentID",
	x."Value1"
FROM
	"Parent" x
WHERE
	(x."ParentID" = :ParentID OR x."ParentID" = :ParentID)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 3
DECLARE @ParentID_1 Int32
SET     @ParentID_1 = 2

SELECT
	x."ParentID",
	x."Value1"
FROM
	"Parent" x
WHERE
	(x."ParentID" = :ParentID OR x."ParentID" = :ParentID_1)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	t1."ParentID",
	t1."Value1"
FROM
	"Parent" t1

