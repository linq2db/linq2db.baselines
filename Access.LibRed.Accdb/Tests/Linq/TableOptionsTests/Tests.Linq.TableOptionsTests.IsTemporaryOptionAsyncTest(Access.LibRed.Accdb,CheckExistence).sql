-- Access.LibRed.Accdb Access.LibRed AccessLibRed
CREATE TABLE [temp_table1]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_temp_table1] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @Value  -- Int32
SET     @Value = 2

INSERT INTO [temp_table1]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
CREATE TABLE [temp_table2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_temp_table2] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
INSERT INTO [temp_table2]
(
	[ID],
	[Value]
)
SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[temp_table1] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[temp_table1] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t1].[ID],
	[t1].[Value]
FROM
	[temp_table2] [t1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 2
DECLARE @Value  -- Int32
SET     @Value = 3

INSERT INTO [temp_table1]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 3
DECLARE @Value  -- Int32
SET     @Value = 3

INSERT INTO [temp_table1]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 4
DECLARE @Value  -- Int32
SET     @Value = 5

INSERT INTO [temp_table1]
(
	[ID],
	[Value]
)
VALUES
(
	@ID,
	@Value
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM [temp_table1]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DELETE FROM [temp_table2]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP TABLE [temp_table2]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP TABLE [temp_table1]

