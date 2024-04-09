﻿BeforeExecute
-- Firebird4 Firebird
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
	CAST(@id AS Int)
)

BeforeExecute
-- Firebird4 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1001

SELECT
	Count(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = @id

BeforeExecute
-- Firebird4 Firebird
DECLARE @id Integer -- Int32
SET     @id = 1001

UPDATE
	"Child"
SET
	"ChildID" = "Child"."ChildID" + 1,
	"ParentID" = (
		SELECT
			"p_1"."ParentID"
		FROM
			"Child" "c_2"
				LEFT JOIN "Parent" "a_Parent_1" ON "c_2"."ParentID" = "a_Parent_1"."ParentID"
				INNER JOIN "Parent" "p_1" ON "c_2"."ParentID" = "p_1"."ParentID"
		WHERE
			"c_2"."ChildID" = @id AND
			"a_Parent_1"."Value1" = 1 AND
			"Child"."ParentID" = "c_2"."ParentID" AND
			"Child"."ChildID" = "c_2"."ChildID"
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" "c_1"
				LEFT JOIN "Parent" "a_Parent" ON "c_1"."ParentID" = "a_Parent"."ParentID"
				INNER JOIN "Parent" "p" ON "c_1"."ParentID" = "p"."ParentID"
		WHERE
			"c_1"."ChildID" = @id AND
			"a_Parent"."Value1" = 1 AND
			"Child"."ParentID" = "c_1"."ParentID" AND
			"Child"."ChildID" = "c_1"."ChildID"
	)

BeforeExecute
-- Firebird4 Firebird
DECLARE @ChildID Integer -- Int32
SET     @ChildID = 1002

SELECT
	Count(*)
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = @ChildID

