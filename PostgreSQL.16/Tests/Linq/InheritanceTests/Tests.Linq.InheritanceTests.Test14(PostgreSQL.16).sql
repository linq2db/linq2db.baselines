﻿BeforeExecute
-- PostgreSQL.16 PostgreSQL.15 PostgreSQL
DECLARE @id Integer -- Int32
SET     @id = 10
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	x."ChildID"
FROM
	"Child" x
WHERE
	x."ChildID" = :id
LIMIT :take

