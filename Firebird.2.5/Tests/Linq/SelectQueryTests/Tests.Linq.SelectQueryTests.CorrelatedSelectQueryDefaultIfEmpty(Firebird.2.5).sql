-- Firebird.2.5 Firebird
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

-- Firebird.2.5 Firebird
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- Firebird.2.5 Firebird
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

-- Firebird.2.5 Firebird
SELECT
	NULL
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	NULL
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	NULL
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
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

-- Firebird.2.5 Firebird
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- Firebird.2.5 Firebird
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

-- Firebird.2.5 Firebird
SELECT
	NULL
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	NULL
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	NULL
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

-- Firebird.2.5 Firebird
SELECT
	'bad'
FROM rdb$database

