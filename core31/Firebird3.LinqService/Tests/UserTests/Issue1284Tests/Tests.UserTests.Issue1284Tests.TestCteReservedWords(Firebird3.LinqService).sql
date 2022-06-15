BeforeExecute
-- Firebird3 Firebird

WITH CTE_1 ("Operator")
AS
(
	SELECT
		"x"."LastName"
	FROM
		"Person" "x"
)
SELECT FIRST 1
	"t1"."Operator"
FROM
	CTE_1 "t1"

BeforeExecute
-- Firebird3 Firebird

SELECT FIRST 1
	"x"."LastName"
FROM
	"Person" "x"

