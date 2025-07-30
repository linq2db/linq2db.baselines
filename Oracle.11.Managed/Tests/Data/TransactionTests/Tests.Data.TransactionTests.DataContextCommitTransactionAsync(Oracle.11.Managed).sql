BeforeExecute
BeginTransactionAsync
BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
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

BeforeExecute
CommitTransactionAsync
BeforeExecute
-- Oracle.11.Managed Oracle11

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" = 1010

