BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

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

