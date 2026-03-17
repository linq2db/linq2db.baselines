-- Oracle.19.Managed Oracle.Managed Oracle12
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

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Value1 Int32
SET     @Value1 = 1002
DECLARE @ParentID Int32
SET     @ParentID = 1001

UPDATE
	"Parent" t1
SET
	"Value1" = :Value1
WHERE
	t1."ParentID" = :ParentID

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 1001

SELECT
	p."ParentID",
	p."Value1"
FROM
	"Parent" p
WHERE
	p."ParentID" = :ParentID
FETCH NEXT 2 ROWS ONLY

