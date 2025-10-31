-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TempTable]

-- Access.Ace.OleDb AccessOleDb

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- Access.Ace.OleDb AccessOleDb

CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL
)

-- Access.Ace.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 1

INSERT INTO [TempTable]
(
	[ID]
)
VALUES
(
	@ID
)

-- Access.Ace.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 2

INSERT INTO [TempTable]
(
	[ID]
)
VALUES
(
	@ID
)

-- Access.Ace.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 3

INSERT INTO [TempTable]
(
	[ID]
)
VALUES
(
	@ID
)

-- Access.Ace.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 4

INSERT INTO [TempTable]
(
	[ID]
)
VALUES
(
	@ID
)

-- Access.Ace.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 5

INSERT INTO [TempTable]
(
	[ID]
)
VALUES
(
	@ID
)

-- Access.Ace.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 6

INSERT INTO [TempTable]
(
	[ID]
)
VALUES
(
	@ID
)

-- Access.Ace.OleDb AccessOleDb
DECLARE @ID Integer -- Int32
SET     @ID = 7

INSERT INTO [TempTable]
(
	[ID]
)
VALUES
(
	@ID
)

-- Access.Ace.OleDb AccessOleDb

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON ([p].[ParentID] = [t].[ID])

-- Access.Ace.OleDb AccessOleDb

DROP TABLE [TempTable]

