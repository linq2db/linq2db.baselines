BeforeExecute
-- Firebird3 Firebird

SELECT
	Count(*)
FROM
	"Child" "t1"

BeforeExecute
-- Firebird3 Firebird

WITH CTE1_ ("ParentID", "ChildID")
AS
(
	SELECT
		"t1"."ParentID",
		"t1"."ChildID"
	FROM
		"Child" "t1"
)
SELECT
	Count(*)
FROM
	CTE1_ "t2"

BeforeExecute
-- Firebird3 Firebird

WITH CTE1_ ("ChildID")
AS
(
	SELECT
		"c_1"."ChildID"
	FROM
		"Child" "c_1"
)
SELECT
	Count(*)
FROM
	CTE1_ "t1"

BeforeExecute
-- Firebird3 Firebird

WITH CTE1_ ("ChildID")
AS
(
	SELECT
		"c_1"."ChildID"
	FROM
		"Child" "c_1"
)
SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				CTE1_ "t1"
		)
			THEN 1
		ELSE 0
	END
FROM rdb$database

