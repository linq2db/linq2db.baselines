﻿BeforeExecute
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1
DECLARE @id Integer -- Int32
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
-- PostgreSQL.12 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	COUNT(*)
FROM
	"Child" c_1
WHERE
	c_1."ChildID" = :id

