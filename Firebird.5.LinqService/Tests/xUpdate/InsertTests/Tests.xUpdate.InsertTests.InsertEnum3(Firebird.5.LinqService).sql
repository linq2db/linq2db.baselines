﻿BeforeExecute
-- Firebird.5 Firebird4

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	Cast(@ParentID as Int),
	1
)

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" = @id

BeforeExecute
-- Firebird.5 Firebird4

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

