-- SqlServer.2005

CREATE TABLE [tempdb]..[#temp_table_2]
(
	[Value] NVarChar(4000)     NULL
)

-- SqlServer.2005

INSERT INTO [tempdb]..[#temp_table_2]
(
	[Value]
)
SELECT
	[t1].[Value_1]
FROM
	(
		SELECT
			[gr].[ID]
		FROM
			[temp_table_1] [gr]
		GROUP BY
			[gr].[ID]
	) [gr_1]
		CROSS APPLY (
			SELECT TOP (1)
				[c_1].[Value] as [Value_1]
			FROM
				[temp_table_1] [c_1]
			WHERE
				[gr_1].[ID] = [c_1].[ID]
		) [t1]

-- SqlServer.2005

IF (OBJECT_ID(N'[tempdb]..[#temp_table_2]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#temp_table_2]

