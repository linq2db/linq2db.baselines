﻿BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 100500
DECLARE @Value1 Integer -- Int32
SET     @Value1 = NULL

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
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 100500

SELECT
	p."ParentID"
FROM
	"Parent" p
WHERE
	p."ParentID" = :id
LIMIT 1

BeforeExecute
-- PostgreSQL.14 PostgreSQL.9.5 PostgreSQL
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 100500
DECLARE @id Integer -- Int32
SET     @id = 100500

UPDATE
	"Parent"
SET
	"Value1" = :ParentID
WHERE
	"Parent"."ParentID" = :id AND (
		SELECT
			Count(*)
		FROM
			"Parent" p
		WHERE
			p."ParentID" = :id
	) > 0

