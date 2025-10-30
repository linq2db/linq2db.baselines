-- Oracle.11.Managed Oracle11

DELETE FROM
	"Child" c_1
WHERE
	c_1."ChildID" > 1000

-- Oracle.11.Managed Oracle11
DECLARE @ChildID Int32
SET     @ChildID = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
SELECT
	c_1."ParentID",
	:ChildID
FROM
	"Child" c_1
WHERE
	c_1."ChildID" = 11

-- Oracle.11.Managed Oracle11
DECLARE @id Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Child" c_1
WHERE
	c_1."ChildID" = :id

-- Oracle.11.Managed Oracle11

DELETE FROM
	"Child" c_1
WHERE
	c_1."ChildID" > 1000

