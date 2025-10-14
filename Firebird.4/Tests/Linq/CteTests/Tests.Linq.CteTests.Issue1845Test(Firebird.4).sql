BeforeExecute
-- Firebird.4 Firebird4

WITH CTE_1 ("Value1", "Value2")
AS
(
	SELECT
		"o"."FirstName",
		"o"."LastName"
	FROM
		"Person" "o"
),
CTE_2 ("Value1", "Value2")
AS
(
	SELECT
		"t1"."Value1",
		"t1"."Value2"
	FROM
		CTE_1 "t1"
	UNION
	SELECT
		"t2"."Value1",
		"t2"."Value2"
	FROM
		(
			SELECT CAST('Somebody' AS VARCHAR(8)) AS "Value1", CAST('Unimportant' AS VARCHAR(11)) AS "Value2" FROM rdb$database) "t2"
)
SELECT
	"t3"."Value1",
	"t3"."Value2"
FROM
	CTE_2 "t3"

