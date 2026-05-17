BeginTransactionAsync
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @ParentID Int32
SET     @ParentID = 1010
DECLARE @Value1 Int32
SET     @Value1 = 1010

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

CommitTransactionAsync
-- Oracle.18.Managed Oracle.Managed Oracle12

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" = 1010

