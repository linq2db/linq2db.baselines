BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
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
BeginTransaction
BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

UPDATE
	"Parent" t
SET
	"Value1" = 1012
WHERE
	t."ParentID" = 1010

BeforeExecute
RollbackTransaction
BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

SELECT
	t."ParentID",
	t."Value1"
FROM
	"Parent" t
WHERE
	t."ParentID" = 1010
FETCH NEXT 1 ROWS ONLY

