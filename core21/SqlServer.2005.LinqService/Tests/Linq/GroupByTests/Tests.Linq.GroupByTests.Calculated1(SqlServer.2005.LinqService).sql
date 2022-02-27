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
DECLARE @p1 NVarChar(4000) -- String
SET     @p1 = N'1'

SELECT
	[selectParam].[ParentID],
	[selectParam].[ChildID]
FROM
	[Child] [selectParam]
WHERE
	CASE
		WHEN [selectParam].[ParentID] > 2
			THEN CASE
			WHEN [selectParam].[ParentID] > 3
				THEN N'1'
			ELSE N'2'
		END
		ELSE N'3'
	END = @p1

