﻿BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DELETE FROM
	"Child" t1
WHERE
	t1."ChildID" > 1000

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL
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

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

SELECT
	Count(*)
FROM
	"Child" c_1
WHERE
	c_1."ChildID" = 1001

BeforeExecute
-- PostgreSQL.9.3 PostgreSQL

DELETE FROM
	"Child" t1
WHERE
	t1."ChildID" > 1000

