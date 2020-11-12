BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" > 1000

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 1001
DECLARE @Value1 Int32
SET     @Value1 = 1001

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	:ParentID,
	:Value1
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 1001

SELECT
	Count(*)
FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 1001

UPDATE
	"Parent"
SET
	"Parent"."ParentID" = "Parent"."ParentID" + 1
WHERE
	"Parent"."ParentID" = :ParentID

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 1002

SELECT
	Count(*)
FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11 (asynchronously)

DELETE FROM
	"Child" t1
WHERE
	t1."ChildID" > 1000

