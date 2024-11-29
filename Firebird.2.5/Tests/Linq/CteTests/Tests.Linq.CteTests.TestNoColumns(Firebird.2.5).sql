BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	COUNT(*)
FROM
	"Child" "t1"

BeforeExecute
-- Firebird.2.5 Firebird

WITH CTE1_ ("unused")
AS
(
	SELECT
		1
	FROM
		"Child" "t1"
)
SELECT
	COUNT(*)
FROM
	CTE1_ "t2"

BeforeExecute
-- Firebird.2.5 Firebird

WITH CTE1_ ("unused")
AS
(
	SELECT
		1
	FROM
		"Child" "c_1"
)
SELECT
	COUNT(*)
FROM
	CTE1_ "t1"

BeforeExecute
-- Firebird.2.5 Firebird

WITH CTE1_ ("unused")
AS
(
	SELECT
		1
	FROM
		"Child" "c_1"
)
SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				CTE1_ "t1"
		) THEN '1'
		ELSE '0'
	END
FROM rdb$database

