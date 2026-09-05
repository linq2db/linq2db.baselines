-- Firebird.3 Firebird3
DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

-- Firebird.3 Firebird3
DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

-- Firebird.3 Firebird3
DECLARE @values_0 Integer -- Int32
SET     @values_0 = 1001

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	@values_0,
	1
)

-- Firebird.3 Firebird3
DECLARE @values_0 Integer -- Int32
SET     @values_0 = 1002

INSERT INTO "Parent"
(
	"ParentID",
	"Value1"
)
VALUES
(
	@values_0,
	1
)

-- Firebird.3 Firebird3
SELECT
	COUNT(*)
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

-- Firebird.3 Firebird3
DELETE FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" IN (1001, 1002)

-- Firebird.3 Firebird3
SELECT
	COUNT(*)
FROM
	"Parent" "t1"
WHERE
	"t1"."ParentID" > 1000

