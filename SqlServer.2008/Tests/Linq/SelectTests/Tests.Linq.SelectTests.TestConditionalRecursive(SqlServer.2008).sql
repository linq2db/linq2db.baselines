-- SqlServer.2008

SELECT
	CASE
		WHEN [p].[ParentID] = 1 THEN CASE
			WHEN (
				SELECT TOP (1)
					[c_1].[ParentID]
				FROM
					[Child] [c_1]
			) IS NOT NULL
				THEN N'1'
			ELSE N'2'
		END
		ELSE N'3'
	END
FROM
	[Parent] [p]

