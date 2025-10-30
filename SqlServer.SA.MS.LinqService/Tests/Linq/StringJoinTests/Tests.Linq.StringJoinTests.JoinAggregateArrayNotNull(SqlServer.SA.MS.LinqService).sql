BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT
	CONCAT_WS(N', ', [t].[NullableValue], [t].[NotNullableValue], [t].[VarcharValue], [t].[NVarcharValue]),
	(
		SELECT
			Coalesce(STRING_AGG(Coalesce([t2].[item_1], N''), N', ') WITHIN GROUP (ORDER BY [t2].[item_1]), N'')
		FROM
			(
				SELECT DISTINCT
					[t1].[item] as [item_1]
				FROM
					(VALUES
						([t].[NullableValue]), ([t].[NotNullableValue]),
						([t].[VarcharValue]), ([t].[NVarcharValue])
					) [t1]([item])
				WHERE
					[t1].[item] IS NOT NULL
			) [t2]
	)
FROM
	[SampleClass] [t]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

