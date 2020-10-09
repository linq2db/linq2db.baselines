BeforeExecute
-- Access AccessOleDb

DROP TABLE [TempTable]

BeforeExecute
-- Access AccessOleDb

SELECT 
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- Access AccessOleDb (asynchronously)

CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb (asynchronously)
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

BeforeExecute
-- Access AccessOleDb (asynchronously)
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

BeforeExecute
-- Access AccessOleDb (asynchronously)
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

BeforeExecute
-- Access AccessOleDb (asynchronously)
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

BeforeExecute
-- Access AccessOleDb (asynchronously)
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

BeforeExecute
-- Access AccessOleDb (asynchronously)
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

BeforeExecute
-- Access AccessOleDb (asynchronously)
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

BeforeExecute
-- Access AccessOleDb

SELECT 
	[t].[ID]
FROM
	[Parent] [p]
		INNER JOIN [TempTable] [t] ON ([p].[ParentID] = [t].[ID])

BeforeExecute
-- Access AccessOleDb

DROP TABLE [TempTable]

