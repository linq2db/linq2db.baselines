BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [TempTable]

BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- Access.Odbc AccessODBC

CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Access.Odbc AccessODBC
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

BeforeExecute
-- Access.Odbc AccessODBC
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

BeforeExecute
-- Access.Odbc AccessODBC
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

BeforeExecute
-- Access.Odbc AccessODBC
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

BeforeExecute
-- Access.Odbc AccessODBC
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

BeforeExecute
-- Access.Odbc AccessODBC
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

BeforeExecute
-- Access.Odbc AccessODBC
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

BeforeExecute
-- Access.Odbc AccessODBC

SELECT 
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON ([p].[ParentID] = [t].[ID])

BeforeExecute
-- Access.Odbc AccessODBC

DROP TABLE [TempTable]

