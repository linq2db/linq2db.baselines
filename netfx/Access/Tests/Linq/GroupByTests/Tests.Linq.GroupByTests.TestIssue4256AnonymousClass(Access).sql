BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[IsActive],
	[t1].[Other]
FROM
	(
		SELECT
			True as [IsActive],
			CBool([it].[SmallIntValue]) as [Other]
		FROM
			[LinqDataTypes] [it]
	) [t1]
GROUP BY
	[t1].[IsActive],
	[t1].[Other]

