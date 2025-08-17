BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @ParentID Int32
SET     @ParentID = 1001
DECLARE @Value1 Int32
SET     @Value1 = 1

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
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @id Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" p
WHERE
	p."ParentID" = :id AND p."Value1" = 1

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @id Int32
SET     @id = 1001

UPDATE
	"Parent" p
SET
	"Value1" = 2
WHERE
	p."ParentID" = :id

BeforeExecute
-- Oracle.11.Managed Oracle11 (asynchronously)
DECLARE @id Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Parent" p
WHERE
	p."ParentID" = :id AND p."Value1" = 2

