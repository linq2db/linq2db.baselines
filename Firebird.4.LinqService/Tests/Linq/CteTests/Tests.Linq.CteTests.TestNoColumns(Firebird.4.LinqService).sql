BeforeExecute
-- Firebird.4 Firebird4

SELECT
	COUNT(*)
FROM
	"Child" "t1"

BeforeExecute
-- Firebird.4 Firebird4

WITH CTE1_ ("c1")
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

WITH CTE1_ ("c1")
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

WITH CTE1_ ("c1")
AS
(
	SELECT
		1
	FROM
		"Child" "c_1"
)
SELECT
	EXISTS(
		SELECT
			*
		FROM
			CTE1_ "t1"
	)
FROM rdb$database

