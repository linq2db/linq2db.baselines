-- Firebird.4 Firebird4
SELECT
	"c_1"."ChildID",
	CASE
		WHEN "x_1"."c1" IS NULL THEN NULL
		ELSE "x_1"."ParentID"
	END
FROM
	"Child" "c_1"
		LEFT JOIN (
			SELECT
				CASE
					WHEN "x"."Value1" = 1 THEN TRUE
					ELSE FALSE
				END as "c1",
				"x"."ParentID"
			FROM
				"Parent" "x"
			WHERE
				"x"."Value1" <> 1 OR "x"."Value1" IS NULL
		) "x_1" ON "x_1"."ParentID" = "c_1"."ParentID"

-- Firebird.4 Firebird4
SELECT
	"t1"."ParentID",
	"t1"."ChildID"
FROM
	"Child" "t1"

-- Firebird.4 Firebird4
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- Firebird.4 Firebird4
SELECT
	"x"."ParentID",
	CASE
		WHEN "x"."Value1" <> 1 OR "x"."Value1" IS NULL THEN 1
		ELSE 0
	END
FROM
	"Parent" "x"

-- Firebird.4 Firebird4
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- Firebird.4 Firebird4
SELECT
	"x"."ParentID"
FROM
	"Parent" "x"
WHERE
	"x"."Value1" <> 1 OR "x"."Value1" IS NULL

-- Firebird.4 Firebird4
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

-- Firebird.4 Firebird4
SELECT
	"x"."ParentID"
FROM
	"Parent" "x"
WHERE
	"x"."Value1" <> 1 OR "x"."Value1" IS NULL

-- Firebird.4 Firebird4
SELECT
	"t1"."ParentID",
	"t1"."Value1"
FROM
	"Parent" "t1"

