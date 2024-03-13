BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[groupedData_1].[Value_1],
	Count(*)
FROM
	(
		SELECT
			IIF([child].[FirstName] = N'John', [child].[FirstName], N'a') as [Value_1]
		FROM
			[Parent] [groupedData],
			[Person] [child]
		WHERE
			[child].[PersonID] = [groupedData].[ParentID]
	) [groupedData_1]
GROUP BY
	[groupedData_1].[Value_1]

