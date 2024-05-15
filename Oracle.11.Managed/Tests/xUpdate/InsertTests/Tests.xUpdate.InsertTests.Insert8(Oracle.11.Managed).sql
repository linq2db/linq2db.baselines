BeforeExecute
-- Oracle.11.Managed Oracle11

DELETE FROM
	"Child" c_1
WHERE
	c_1."ChildID" > 1000

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @ParentID Int32
SET     @ParentID = 1
DECLARE @id Int32
SET     @id = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	:ParentID,
	:id
)

BeforeExecute
-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Child" c_1
WHERE
	c_1."ChildID" = :id

BeforeExecute
-- Oracle.11.Managed Oracle11

DELETE FROM
	"Child" c_1
WHERE
	c_1."ChildID" > 1000

