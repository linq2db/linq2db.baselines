BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

WITH [CTE_1] ([c1])
AS
(
	SELECT
		1
	FROM
		[Child] [c_1]
	WHERE
		[c_1].[ParentID] > 1
)
SELECT
	COUNT(*)
FROM
	[CTE_1] [c_2]

