-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP TABLE [TempTable]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL,

	CONSTRAINT [PK_TempTable] PRIMARY KEY CLUSTERED ([ID])
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 1

INSERT INTO [TempTable]
(
	[ID]
)
VALUES
(
	@ID
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 2

INSERT INTO [TempTable]
(
	[ID]
)
VALUES
(
	@ID
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 3

INSERT INTO [TempTable]
(
	[ID]
)
VALUES
(
	@ID
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 4

INSERT INTO [TempTable]
(
	[ID]
)
VALUES
(
	@ID
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 5

INSERT INTO [TempTable]
(
	[ID]
)
VALUES
(
	@ID
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 6

INSERT INTO [TempTable]
(
	[ID]
)
VALUES
(
	@ID
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 7

INSERT INTO [TempTable]
(
	[ID]
)
VALUES
(
	@ID
)

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON ([p].[ParentID] = [t].[ID])

-- Access.LibRed.Accdb Access.LibRed AccessLibRed
DROP TABLE [TempTable]

