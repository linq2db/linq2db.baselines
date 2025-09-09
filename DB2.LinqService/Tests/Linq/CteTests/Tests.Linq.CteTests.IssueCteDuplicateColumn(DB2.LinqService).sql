BeforeExecute
-- DB2 DB2.LUW DB2LUW (asynchronously)

WITH CTE_1 ("Id2", "Id1")
AS
(
	SELECT
		"p"."Value1",
		"p"."ParentID"
	FROM
		"Parent" "p"
	WHERE
		"p"."Value1" IS NOT NULL
),
CTE_2 ("Id1", "Id2")
AS
(
	SELECT
		"t1"."Id1",
		"t1"."Id2"
	FROM
		CTE_1 "t1"
	UNION ALL
	SELECT
		"t2"."Id1",
		"record2"."Id2"
	FROM
		CTE_1 "t2",
		CTE_1 "record2"
	WHERE
		"t2"."Id2" = "record2"."Id1"
)
SELECT
	"t3"."Id1",
	"t3"."Id2"
FROM
	CTE_2 "t3"

