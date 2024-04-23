﻿BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"Parent" "p"
WHERE
	"p"."Value1" = 11

BeforeExecute
-- Firebird.2.5 Firebird

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
SELECT
	"c_1"."ParentID" + 1000,
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" = 11

BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	Count(*)
FROM
	"Parent" "p"
WHERE
	"p"."Value1" = 11

BeforeExecute
-- Firebird.2.5 Firebird

DELETE FROM
	"Parent" "p"
WHERE
	"p"."Value1" = 11

