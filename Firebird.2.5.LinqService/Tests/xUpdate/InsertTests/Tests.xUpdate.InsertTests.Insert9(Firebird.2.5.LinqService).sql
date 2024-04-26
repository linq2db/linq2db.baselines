﻿BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" > 1000

BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"Parent" "p"
WHERE
	"p"."ParentID" > 1000

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @ParentID Integer -- Int32
SET     @ParentID = 1001
DECLARE @Value1 Integer -- Int32
SET     @Value1 = 1001

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	CAST(@ParentID AS Int),
	CAST(@Value1 AS Int)
)

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
SELECT
	"p"."ParentID",
	"p"."ParentID"
FROM
	"Parent" "p"
WHERE
	"p"."ParentID" = @id

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = @id

BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"Child" "c_1"
WHERE
	"c_1"."ParentID" > 1000

BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"Parent" "p"
WHERE
	"p"."ParentID" > 1000

