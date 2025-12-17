-- SqlServer.2017.MS SqlServer.2017

SELECT
	CONCAT_WS(N', ', [t].[NullableValue], [t].[NotNullableValue], [t].[VarcharValue], [t].[NVarcharValue]),
	(
		SELECT
			Coalesce(STRING_AGG(Coalesce([t1].[item], N''), N', '), N'')
		FROM
			(VALUES
				([t].[NullableValue]), ([t].[NotNullableValue]),
				([t].[VarcharValue]), ([t].[NVarcharValue])
			) [t1]([item])
		WHERE
			[t1].[item] IS NOT NULL
	)
FROM
	[SampleClass] [t]

-- SqlServer.2017.MS SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[NullableValue],
	[t1].[NotNullableValue],
	[t1].[VarcharValue],
	[t1].[NVarcharValue]
FROM
	[SampleClass] [t1]

