﻿BeforeExecute
-- Firebird

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

BeforeExecute
-- Firebird

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

BeforeExecute
-- Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	@ParentID,
	1
)

BeforeExecute
-- Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1002

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	@ParentID,
	1
)

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

BeforeExecute
-- Firebird

DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" IN (1001, 1002)

BeforeExecute
-- Firebird

SELECT
	Count(*)
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

