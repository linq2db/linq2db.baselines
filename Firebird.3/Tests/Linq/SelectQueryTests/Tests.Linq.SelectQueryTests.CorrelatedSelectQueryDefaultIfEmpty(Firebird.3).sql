-- Firebird.3 Firebird3
SELECT
	"c_1"."ChildID",
	CASE
		WHEN "c_1"."ChildID" <> "p"."ParentID" * 10 + 1 OR "p"."Value1" IS DISTINCT FROM "c_1"."ParentID"
			THEN 5
		ELSE 3
	END,
	CASE
		WHEN "c_1"."ChildID" <> "p"."ParentID" * 10 + 1 OR "p"."Value1" IS DISTINCT FROM "c_1"."ParentID"
			THEN 'bad'
		ELSE NULL
	END
FROM
	"Parent" "p"
		CROSS JOIN "Child" "c_1"
WHERE
	"c_1"."ParentID" = "p"."ParentID"

-- Firebird.3 Firebird3
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- Firebird.3 Firebird3
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

-- Firebird.3 Firebird3
SELECT
	NULL
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	NULL
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	NULL
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	"c_1"."ChildID",
	CASE
		WHEN "c_1"."ChildID" <> "p"."ParentID" * 10 + 1 OR "p"."Value1" IS DISTINCT FROM "c_1"."ParentID"
			THEN 5
		ELSE 3
	END,
	CASE
		WHEN "c_1"."ChildID" <> "p"."ParentID" * 10 + 1 OR "p"."Value1" IS DISTINCT FROM "c_1"."ParentID"
			THEN 'bad'
		ELSE NULL
	END
FROM
	"Parent" "p",
	"Child" "c_1"
WHERE
	"c_1"."ParentID" = "p"."ParentID"

-- Firebird.3 Firebird3
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- Firebird.3 Firebird3
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

-- Firebird.3 Firebird3
SELECT
	NULL
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	NULL
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	NULL
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

-- Firebird.3 Firebird3
SELECT
	'bad'
FROM rdb$database

