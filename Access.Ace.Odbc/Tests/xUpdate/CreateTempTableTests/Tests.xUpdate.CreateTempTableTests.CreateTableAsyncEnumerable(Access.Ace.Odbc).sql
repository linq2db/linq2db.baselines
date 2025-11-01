-- Access.Ace.Odbc AccessODBC

DROP TABLE [TempTable]

-- Access.Ace.Odbc AccessODBC

SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

-- Access.Ace.Odbc AccessODBC

CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL
)

-- Access.Ace.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 1

INSERT INTO [TempTable]
(
	[ID]
)
VALUES
(
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 2

INSERT INTO [TempTable]
(
	[ID]
)
VALUES
(
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 3

INSERT INTO [TempTable]
(
	[ID]
)
VALUES
(
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 4

INSERT INTO [TempTable]
(
	[ID]
)
VALUES
(
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 5

INSERT INTO [TempTable]
(
	[ID]
)
VALUES
(
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 6

INSERT INTO [TempTable]
(
	[ID]
)
VALUES
(
	?
)

-- Access.Ace.Odbc AccessODBC
DECLARE @ID Int -- Int32
SET     @ID = 7

INSERT INTO [TempTable]
(
	[ID]
)
VALUES
(
	?
)

-- Access.Ace.Odbc AccessODBC

SELECT
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON ([p].[ParentID] = [t].[ID])

-- Access.Ace.Odbc AccessODBC

DROP TABLE [TempTable]

