-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE TABLE [temp_table_1]
(
	[ID]    Int           NOT NULL,
	[Value] NVarChar(255)     NULL,

	CONSTRAINT [PK_temp_table_1] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @Value NVarChar(5) -- String
SET     @Value = 'Value'

INSERT INTO [temp_table_1]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
CREATE TABLE [temp_table_2]
(
	[Value] NVarChar(50) NOT NULL,

	CONSTRAINT [PK_temp_table_2] PRIMARY KEY CLUSTERED ([Value])
)

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
INSERT INTO [temp_table_2]
(
	[Value]
)
SELECT
	[t1].[Value_1]
FROM
	[temp_table_1] [gr]
		CROSS APPLY (
			SELECT TOP 1
				[c_1].[Value] as [Value_1]
			FROM
				[temp_table_1] [c_1]
			WHERE
				[gr].[ID] = [c_1].[ID]
		) [t1]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE [temp_table_2]

-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DROP TABLE [temp_table_1]

