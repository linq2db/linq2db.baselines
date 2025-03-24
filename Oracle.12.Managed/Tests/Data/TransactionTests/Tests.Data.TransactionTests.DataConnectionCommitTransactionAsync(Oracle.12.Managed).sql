﻿BeforeExecute
BeginTransactionAsync
BeforeExecute
--  Oracle.12.Managed Oracle.Managed Oracle12 (asynchronously)
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
--  Oracle.12.Managed Oracle.Managed Oracle12

DELETE FROM
	"Parent" t1
WHERE
	t1."ParentID" = 1010

