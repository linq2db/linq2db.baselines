﻿BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

DELETE FROM
	"Child" "t1"
WHERE
	"t1"."ChildID" > 1000

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
SELECT
	"c_1"."ParentID",
	Cast(@id as Int)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = 11

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = @id

BeforeExecute
-- Firebird.4 Firebird4 (asynchronously)

DELETE FROM
	"Child" "t1"
WHERE
	"t1"."ChildID" > 1000

