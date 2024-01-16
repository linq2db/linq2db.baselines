BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Key_1]
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
			END as [Key_1]
		FROM
			[Child] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @p NVarChar(4000) -- String
SET     @p = N'1'

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
	END = @p

