-- PostgreSQL.9.2 PostgreSQL
DELETE FROM
	"Child" c_1
WHERE
	c_1."ChildID" > 1000

-- PostgreSQL.9.2 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	:ParentID,
	:ChildID
)

-- PostgreSQL.9.2 PostgreSQL
SELECT
	COUNT(*)
FROM
	"Child" c_1
WHERE
	c_1."ChildID" = 1001

-- PostgreSQL.9.2 PostgreSQL
DELETE FROM
	"Child" c_1
WHERE
	c_1."ChildID" > 1000

