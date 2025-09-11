BeforeExecute
-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#temp_table_1]
(
	[ID]    Int            NOT NULL,
	[Value] NVarChar(4000)     NULL,

	PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
INSERT BULK [tempdb]..[#temp_table_1](ID, Value)

BeforeExecute
-- SqlServer.SA SqlServer.2019

CREATE TABLE [tempdb]..[#temp_table_2]
(
	[Value] NVarChar(50) NOT NULL,

	PRIMARY KEY CLUSTERED ([Value])
)

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
			[tempdb]..[#temp_table_1] [gr]
		GROUP BY
			[gr].[ID]
	) [gr_1]
		CROSS APPLY (
			SELECT TOP (1)
				[c_1].[Value] as [Value_1]
			FROM
				[tempdb]..[#temp_table_1] [c_1]
			WHERE
				[gr_1].[ID] = [c_1].[ID]
		) [t1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#temp_table_2]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#temp_table_1]

