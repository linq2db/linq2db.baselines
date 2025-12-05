-- Firebird.5 Firebird4

DELETE FROM
	"Parent" "p"
WHERE
	"p"."Value1" = 11

-- Firebird.5 Firebird4

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

-- Firebird.5 Firebird4

SELECT
	COUNT(*)
FROM
	"Parent" "p"
WHERE
	"p"."Value1" = 11

-- Firebird.5 Firebird4

DELETE FROM
	"Parent" "p"
WHERE
	"p"."Value1" = 11

