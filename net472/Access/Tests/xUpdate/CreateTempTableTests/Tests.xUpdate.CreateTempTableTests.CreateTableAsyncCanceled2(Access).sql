﻿BeforeExecute
-- Access AccessOleDb

DROP TABLE [TempTable]

BeforeExecute
-- Access AccessOleDb (asynchronously)

CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Access AccessOleDb (asynchronously)

INSERT INTO [TempTable]
(
	[ID]
)
SELECT
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- Access AccessOleDb (asynchronously)

DROP TABLE [TempTable]

BeforeExecute
-- Access AccessOleDb

DROP TABLE [TempTable]

