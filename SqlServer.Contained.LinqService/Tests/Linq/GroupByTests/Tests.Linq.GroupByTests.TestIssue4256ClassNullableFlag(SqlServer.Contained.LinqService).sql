BeforeExecute
-- SqlServer.Contained SqlServer.2019

SELECT
	[t1].[IsActive],
	[t1].[Other]
FROM
	(
		SELECT
			1 as [IsActive],
			Convert(Bit, [it].[SmallIntValue]) as [Other]
		FROM
			[LinqDataTypes] [it]
	) [t1]
GROUP BY
	[t1].[IsActive],
	[t1].[Other]

