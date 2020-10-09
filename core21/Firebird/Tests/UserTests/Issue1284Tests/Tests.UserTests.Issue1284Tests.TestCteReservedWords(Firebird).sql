BeforeExecute
-- Firebird
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
SELECT FIRST @take 
	"t1"."Operator"
FROM
	CTE_1 "t1"

BeforeExecute
-- Firebird
DECLARE @take Integer -- Int32
SET     @take = 1

SELECT FIRST @take 
	"x"."LastName"
FROM
	"Person" "x"

