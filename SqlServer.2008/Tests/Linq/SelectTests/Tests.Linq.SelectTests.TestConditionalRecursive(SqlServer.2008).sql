-- SqlServer.2008

SELECT
	CASE
		WHEN [p].[ParentID] = 1 THEN CASE
			WHEN [c_2].[cond] IS NOT NULL THEN N'1'
			ELSE N'2'
		END
		ELSE N'3'
	END
FROM
	[Parent] [p]
		LEFT JOIN (
			SELECT TOP (1)
				[c_1].[ParentID] as [cond]
			FROM
				[Child] [c_1]
		) [c_2] ON 1=1

