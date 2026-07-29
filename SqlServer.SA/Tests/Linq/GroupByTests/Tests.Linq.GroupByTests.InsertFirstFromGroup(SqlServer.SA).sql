-- SqlServer.SA SqlServer.2019
CREATE TABLE [temp_table_1]
(
	[ID]    Int            NOT NULL,
	[Value] NVarChar(4000)     NULL,

	CONSTRAINT [PK_temp_table_1] PRIMARY KEY CLUSTERED ([ID])
)

INSERT BULK [temp_table_1](ID, Value)

-- SqlServer.SA SqlServer.2019
CREATE TABLE [temp_table_2]
(
	[Value] NVarChar(50) NOT NULL,

	CONSTRAINT [PK_temp_table_2] PRIMARY KEY CLUSTERED ([Value])
)

-- SqlServer.SA SqlServer.2019
INSERT INTO [temp_table_2]
(
	[Value]
)
SELECT
	(
		SELECT TOP (1)
			[c_1].[Value]
		FROM
			[temp_table_1] [c_1]
		WHERE
			[gr].[ID] = [c_1].[ID]
	)
FROM
	[temp_table_1] [gr]

-- SqlServer.SA SqlServer.2019
DROP TABLE IF EXISTS [temp_table_2]

-- SqlServer.SA SqlServer.2019
DROP TABLE IF EXISTS [temp_table_1]

