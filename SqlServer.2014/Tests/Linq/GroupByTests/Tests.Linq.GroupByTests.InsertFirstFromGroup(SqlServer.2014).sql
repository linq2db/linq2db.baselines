-- SqlServer.2014

CREATE TABLE [temp_table_1]
(
	[ID]    Int            NOT NULL,
	[Value] NVarChar(4000)     NULL,

	CONSTRAINT [PK_temp_table_1] PRIMARY KEY CLUSTERED ([ID])
)

INSERT BULK [temp_table_1](ID, Value)

-- SqlServer.2014

CREATE TABLE [temp_table_2]
(
	[Value] NVarChar(50) NOT NULL,

	CONSTRAINT [PK_temp_table_2] PRIMARY KEY CLUSTERED ([Value])
)

-- SqlServer.2014

INSERT INTO [temp_table_2]
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

-- SqlServer.2014

IF (OBJECT_ID(N'[temp_table_2]', N'U') IS NOT NULL)
	DROP TABLE [temp_table_2]

-- SqlServer.2014

IF (OBJECT_ID(N'[temp_table_1]', N'U') IS NOT NULL)
	DROP TABLE [temp_table_1]

