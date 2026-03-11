-- Oracle.18.Managed Oracle.Managed Oracle12

DELETE FROM
	"Child" c_1
WHERE
	c_1."ChildID" > 1000

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	1,
	:id
)

-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @id Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Child" c_1
WHERE
	c_1."ChildID" = :id

-- Oracle.18.Managed Oracle.Managed Oracle12

DELETE FROM
	"Child" c_1
WHERE
	c_1."ChildID" > 1000

