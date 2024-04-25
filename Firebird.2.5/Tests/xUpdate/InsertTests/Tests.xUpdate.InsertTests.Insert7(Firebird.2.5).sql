﻿BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1001
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1

INSERT INTO "Child"
(
	"ChildID",
	"ParentID"
)
VALUES
(
	CAST(@id AS Int),
	CAST(@ParentID AS Int)
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = @id

BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" > 1000

