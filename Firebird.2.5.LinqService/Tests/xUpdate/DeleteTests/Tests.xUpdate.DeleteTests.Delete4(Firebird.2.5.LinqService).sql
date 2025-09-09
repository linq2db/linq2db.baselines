﻿BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

DELETE FROM
	"GrandChild" "gc"
WHERE
	"gc"."GrandChildID" IN (1001, 1002)

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

INSERT INTO "GrandChild"
(
	"ParentID",
	"ChildID",
	"GrandChildID"
)
VALUES
(
	1,
	1,
	1001
)

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

INSERT INTO "GrandChild"
(
	"ParentID",
	"ChildID",
	"GrandChildID"
)
VALUES
(
	1,
	2,
	1002
)

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	COUNT(*)
FROM
	"GrandChild" "gc"
WHERE
	"gc"."ParentID" = 1

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

DELETE FROM
	"GrandChild" "t1"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			"GrandChild" "gc"
				INNER JOIN "Parent" "a_Parent" ON "gc"."ParentID" = "a_Parent"."ParentID"
		WHERE
			"a_Parent"."ParentID" = 1 AND
			"gc"."GrandChildID" IN (1001, 1002) AND
			"t1"."ParentID" = "gc"."ParentID" AND
			"t1"."ChildID" = "gc"."ChildID" AND
			"t1"."GrandChildID" = "gc"."GrandChildID"
	)

BeforeExecute
-- Firebird.2.5 Firebird (asynchronously)

SELECT
	COUNT(*)
FROM
	"GrandChild" "gc"
WHERE
	"gc"."ParentID" = 1

