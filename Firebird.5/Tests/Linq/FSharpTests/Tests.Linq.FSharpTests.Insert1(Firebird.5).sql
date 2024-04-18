﻿BeforeExecute
-- Firebird.5 Firebird4

DELETE FROM
	"Child" "t1"
WHERE
	"t1"."ChildID" > 1000

BeforeExecute
-- Firebird.5 Firebird4
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
	@ParentID,
	@ChildID
)

BeforeExecute
-- Firebird.5 Firebird4

SELECT
	Count(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = 1001

BeforeExecute
-- Firebird.5 Firebird4

DELETE FROM
	"Child" "t1"
WHERE
	"t1"."ChildID" > 1000

