BeforeExecute
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

WITH CTE_1 ("Operator")
AS
(
	SELECT
		"x"."LastName"
	FROM
		"Person" "x"
)
SELECT
	"t1"."Operator"
FROM
	CTE_1 "t1"
FETCH NEXT @take ROWS ONLY

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT
	"x"."LastName"
FROM
	"Person" "x"
FETCH NEXT @take ROWS ONLY

