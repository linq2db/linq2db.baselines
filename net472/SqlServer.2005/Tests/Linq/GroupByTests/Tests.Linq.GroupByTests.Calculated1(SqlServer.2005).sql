BeforeExecute
-- SqlServer.2005

SELECT
	[t1].[c1]
FROM
	(
		SELECT
			CASE
				WHEN [selectParam].[ParentID] > 2
					THEN CASE
					WHEN [selectParam].[ParentID] > 3
						THEN N'1'
					ELSE N'2'
				END
				ELSE N'3'
			END as [c1]
		FROM
			[Child] [selectParam]
	) [t1]
GROUP BY
	[t1].[c1]

BeforeExecute
-- SqlServer.2005
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'1'

SELECT
	[underscore].[ParentID],
	[underscore].[ChildID]
FROM
	(
		SELECT
			CASE
				WHEN [selectParam].[ParentID] > 2
					THEN CASE
					WHEN [selectParam].[ParentID] > 3
						THEN N'1'
					ELSE N'2'
				END
				ELSE N'3'
			END as [Key_1],
			[selectParam].[ParentID],
			[selectParam].[ChildID]
		FROM
			[Child] [selectParam]
	) [underscore]
WHERE
	[underscore].[Key_1] = @p_1

