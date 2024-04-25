﻿BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
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
	CAST(@ParentID AS Int),
	CAST(@id AS Int)
)

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = @id

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

