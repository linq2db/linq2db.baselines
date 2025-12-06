-- SqlCe

CREATE TABLE [temp_table_1]
(
	[ID]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_temp_table_1] PRIMARY KEY ([ID])
)

-- SqlCe

INSERT INTO [temp_table_1]
(
	[ID],
	[Value]
)
SELECT 1,'Value'

-- SqlCe

CREATE TABLE [temp_table_2]
(
	[Value] NVarChar(50) NOT NULL,

	CONSTRAINT [PK_temp_table_2] PRIMARY KEY ([Value])
)

-- SqlCe

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

-- SqlCe

DROP TABLE [temp_table_2]

-- SqlCe

DROP TABLE [temp_table_1]

