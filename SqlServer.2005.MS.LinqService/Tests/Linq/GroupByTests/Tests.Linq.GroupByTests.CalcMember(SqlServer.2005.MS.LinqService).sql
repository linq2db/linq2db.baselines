BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	[t1].[Key_1],
	COUNT(*)
FROM
	(
		SELECT
			CASE
				WHEN [child].[FirstName] = N'John' THEN [child].[FirstName]
				ELSE N'a'
			END as [Key_1]
		FROM
			[Parent] [groupedData],
			[Person] [child]
		WHERE
			[child].[PersonID] = [groupedData].[ParentID]
	) [t1]
GROUP BY
	[t1].[Key_1]

