BeforeExecute
-- SqlServer.2008

SELECT
	CASE
		WHEN [p].[Value1] IS NOT NULL THEN [p].[Value1]
		ELSE 0
	END
FROM
	[Parent] [p]

