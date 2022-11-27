BeforeExecute
-- Access AccessOleDb

DROP TABLE [TempTable]

BeforeExecute
-- Access AccessOleDb

CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- Access AccessOleDb

SELECT
	[t1].[ID]
FROM
	[TempTable] [t1]

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

