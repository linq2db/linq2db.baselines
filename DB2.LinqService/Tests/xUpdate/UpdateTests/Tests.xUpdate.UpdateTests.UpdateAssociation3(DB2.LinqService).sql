﻿BeforeExecute
--  DB2 DB2.LUW DB2LUW

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	20000,
	20000
)

BeforeExecute
--  DB2 DB2.LUW DB2LUW

INSERT INTO "Child"
(
	"ChildID",
	"ParentID"
)
VALUES
(
	10000,
	20000
)

BeforeExecute
--  DB2 DB2.LUW DB2LUW

UPDATE
	"Parent"
SET
	"Value1" = 5
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"Child" "child_1"
				LEFT JOIN "Parent" "a_Parent" ON "child_1"."ParentID" = "a_Parent"."ParentID"
		WHERE
			"child_1"."ChildID" = 10000 AND
			"a_Parent"."ParentID" > 0 AND
			"Parent"."ParentID" = "a_Parent"."ParentID" AND
			("Parent"."Value1" = "a_Parent"."Value1" OR "Parent"."Value1" IS NULL AND "a_Parent"."Value1" IS NULL)
	)

