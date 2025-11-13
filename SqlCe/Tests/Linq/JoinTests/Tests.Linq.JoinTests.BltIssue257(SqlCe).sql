-- SqlCe

SELECT
	[b_1].[Date_1],
	COUNT(*) as [Count_1]
FROM
	(
		SELECT
			CAST(CONVERT(NVarChar(10), [b].[DateTimeValue], 101) AS DateTime) as [Date_1]
		FROM
			[LinqDataTypes] [b]
				INNER JOIN [Parent] [p] ON [b].[ID] = [p].[ParentID]
	) [b_1]
GROUP BY
	[b_1].[Date_1]

