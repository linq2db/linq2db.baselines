﻿BeforeExecute
-- Firebird3 Firebird

DELETE FROM
	"Child" "t1"
WHERE
	"t1"."ChildID" > 1000

BeforeExecute
-- Firebird3 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1001

INSERT INTO "Child"
(
	"ParentID",
	"ChildID"
)
VALUES
(
	1,
	@id
)

BeforeExecute
-- Firebird3 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = @id

BeforeExecute
-- Firebird3 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	"Child"
SET
	"Child"."ChildID" = "Child"."ChildID" + 2
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
				LEFT JOIN "Parent" "a_Parent" ON "c_1"."ParentID" = "a_Parent"."ParentID"
		WHERE
			"c_1"."ChildID" = @id AND
			"a_Parent"."Value1" = 1 AND
			"Child"."ParentID" = "c_1"."ParentID" AND
			"Child"."ChildID" = "c_1"."ChildID"
	)

BeforeExecute
-- Firebird3 Firebird
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 1003

SELECT
	Count(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = @ChildID

