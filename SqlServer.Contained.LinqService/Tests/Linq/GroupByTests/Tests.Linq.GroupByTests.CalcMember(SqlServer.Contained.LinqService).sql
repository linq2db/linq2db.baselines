BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[groupedData_1].[c1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([child].[FirstName] = N'John', [child].[FirstName], N'a') as [c1]
		FROM
			[Parent] [groupedData],
			[Person] [child]
		WHERE
			[child].[PersonID] = [groupedData].[ParentID]
	) [groupedData_1]
GROUP BY
	[groupedData_1].[c1]

