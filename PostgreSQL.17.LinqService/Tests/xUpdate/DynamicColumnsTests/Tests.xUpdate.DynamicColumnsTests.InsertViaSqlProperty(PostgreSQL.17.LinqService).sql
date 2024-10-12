BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
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

BeforeExecute
-- PostgreSQL.17 PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Child" c_1
WHERE
	c_1."ChildID" = :id

