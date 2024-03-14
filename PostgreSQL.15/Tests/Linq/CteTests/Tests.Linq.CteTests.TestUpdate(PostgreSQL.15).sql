﻿BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "CteChild"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

CREATE TABLE IF NOT EXISTS "CteChild"
(
	"ChildID"  Int NOT NULL,
	"ParentID" Int NOT NULL
)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

INSERT INTO "CteChild"
(
	"ChildID",
	"ParentID"
)
VALUES
(1000,0),
(1001,1),
(1002,2),
(1003,3),
(1004,4),
(1005,5),
(1006,6),
(1007,7),
(1008,8),
(1009,9)

BeforeExecute
-- PostgreSQL.15 PostgreSQL

WITH "CTE_1" ("ParentID", "ChildID")
AS
(
	SELECT
		c_1."ParentID",
		c_1."ChildID"
	FROM
		"CteChild" c_1
	WHERE
		c_1."ParentID" % 2 = 0
)
UPDATE
	"CteChild"
SET
	"ParentID" = "CteChild"."ChildID"
FROM
	"CTE_1" ct
WHERE
	ct."ParentID" = "CteChild"."ParentID"

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	c_1."ChildID",
	c_1."ParentID"
FROM
	"CteChild" c_1
WHERE
	c_1."ParentID" % 2 = 0

BeforeExecute
-- PostgreSQL.15 PostgreSQL

SELECT
	c_1."ChildID"
FROM
	"CteChild" c_1
WHERE
	c_1."ParentID" % 2 = 0

BeforeExecute
-- PostgreSQL.15 PostgreSQL

DROP TABLE IF EXISTS "CteChild"

