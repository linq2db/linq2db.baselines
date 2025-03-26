BeforeExecute
-- SqlServer.2017

CREATE TABLE [tempdb]..[#temp_table_2]
(
	[Value] NVarChar(4000)     NULL
)

BeforeExecute
-- SqlServer.2017

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

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [tempdb]..[#temp_table_2]

