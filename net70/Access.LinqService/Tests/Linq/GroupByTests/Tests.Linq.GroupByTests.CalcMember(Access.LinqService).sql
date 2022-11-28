BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[c1],
	Count(*)
FROM
	(
		SELECT
			Iif([child].[FirstName] = 'John', [child].[FirstName], 'a') as [c1]
		FROM
			[Parent] [parent_1],
			[Person] [child]
		WHERE
			[child].[PersonID] = [parent_1].[ParentID]
	) [t1]
GROUP BY
	[t1].[c1]

