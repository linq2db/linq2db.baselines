BeforeExecute
-- Firebird.3 Firebird3

SELECT
	COUNT(*)
FROM
	"Child" "t1"

BeforeExecute
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

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
-- Firebird.3 Firebird3

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
		) THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

