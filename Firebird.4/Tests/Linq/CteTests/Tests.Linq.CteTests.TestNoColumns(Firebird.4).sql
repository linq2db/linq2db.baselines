BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Child" "t1"

BeforeExecute
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

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
-- Firebird.4 Firebird4

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

