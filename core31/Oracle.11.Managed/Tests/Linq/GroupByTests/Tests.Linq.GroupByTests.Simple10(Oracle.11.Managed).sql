BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

SELECT
	t1."ParentID"
FROM
	"Child" t1
GROUP BY
	t1."ParentID"

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @ParentID Int32
SET     @ParentID = 1

SELECT
	keyParam."ParentID",
	keyParam."ChildID"
FROM
	"Child" keyParam
WHERE
	keyParam."ParentID" = :ParentID

