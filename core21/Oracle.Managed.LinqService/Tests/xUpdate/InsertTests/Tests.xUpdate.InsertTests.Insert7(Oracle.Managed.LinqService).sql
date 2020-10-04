BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	Child t1
WHERE
	t1.ChildID > 1000

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1001
DECLARE @ParentID Int32
SET     @ParentID = 1

INSERT INTO Child
(
	ChildID,
	ParentID
)
VALUES
(
	:id,
	:ParentID
)

BeforeExecute
-- Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	Child c_1
WHERE
	c_1.ChildID = :id

BeforeExecute
-- Oracle.Managed Oracle12

DELETE FROM
	Child t1
WHERE
	t1.ChildID > 1000

