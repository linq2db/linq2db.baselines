﻿BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TempTable]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb (asynchronously)

DROP TABLE [TempTable]

BeforeExecute
-- Access.Jet.OleDb AccessOleDb

DROP TABLE [TempTable]

