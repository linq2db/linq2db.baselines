BeforeExecute
-- DB2 DB2.LUW DB2LUW

WITH CTE_1 ("Property1")
AS
(
	SELECT
		"a"."Property2"
	FROM
		"NestingC" "a"
)
SELECT
	"c2"."Property1",
	"t_1"."Property2",
	"t_1"."Property3"
FROM
	CTE_1 "c2",
	"NestingC" "t",
	"NestingC" "t_1"

