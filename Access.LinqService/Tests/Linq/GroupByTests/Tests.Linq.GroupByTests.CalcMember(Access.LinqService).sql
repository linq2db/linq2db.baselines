BeforeExecute
-- Access AccessOleDb

SELECT
	[groupedData_1].[Value_1],
	COUNT(*)
FROM
	(
		SELECT
			IIF([child].[FirstName] = 'John', [child].[FirstName], 'a') as [Value_1]
		FROM
			[Parent] [groupedData],
			[Person] [child]
		WHERE
			[child].[PersonID] = [groupedData].[ParentID]
	) [groupedData_1]
GROUP BY
	[groupedData_1].[Value_1]

