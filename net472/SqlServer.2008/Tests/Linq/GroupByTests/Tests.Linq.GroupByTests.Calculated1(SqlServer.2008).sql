BeforeExecute
-- SqlServer.2008

SELECT
	CASE
		WHEN [selectParam].[ParentID] > 2
			THEN CASE
			WHEN [selectParam].[ParentID] > 3
				THEN N'1'
			ELSE N'2'
		END
		ELSE N'3'
	END
FROM
	[Child] [selectParam]
GROUP BY
	CASE
		WHEN [selectParam].[ParentID] > 2
			THEN CASE
			WHEN [selectParam].[ParentID] > 3
				THEN N'1'
			ELSE N'2'
		END
		ELSE N'3'
	END

BeforeExecute
-- SqlServer.2008
DECLARE @p_1 NVarChar(4000) -- String
SET     @p_1 = N'1'

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
	END = @p_1

