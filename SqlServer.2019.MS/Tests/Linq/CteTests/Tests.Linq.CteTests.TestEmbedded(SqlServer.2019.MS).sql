BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

WITH [CTE_1] ([cte_field_1])
AS
(
	SELECT
		[c_1].[ChildID]
	FROM
		[Child] [c_1]
),
[CTE_2] ([cte_field_1])
AS
(
	SELECT DISTINCT
		[t1].[cte_field_1]
	FROM
		[CTE_1] [t1]
),
[CTE_3] ([cte_field_1])
AS
(
	SELECT DISTINCT
		[t2].[cte_field_1]
	FROM
		[CTE_2] [t2]
),
[CTE_4] ([cte_field_1])
AS
(
	SELECT DISTINCT
		[t3].[cte_field_1]
	FROM
		[CTE_3] [t3]
)
SELECT
	[w].[ParentID],
	[w].[ChildID]
FROM
	[Child] [w]
WHERE
	[w].[ChildID] NOT IN (
		SELECT
			[t4].[cte_field_1]
		FROM
			[CTE_4] [t4]
	)

