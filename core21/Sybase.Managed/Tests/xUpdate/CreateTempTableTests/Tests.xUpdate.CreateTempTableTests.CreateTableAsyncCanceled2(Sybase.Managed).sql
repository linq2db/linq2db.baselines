BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [TempTable]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

CREATE TABLE [TempTable]
(
	[ID] Int NOT NULL
)

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

INSERT INTO [TempTable]
(
	[ID]
)
SELECT 
	[p].[ParentID]
FROM
	[Parent] [p]

BeforeExecute
-- Sybase.Managed Sybase (asynchronously)

DROP TABLE [TempTable]

BeforeExecute
-- Sybase.Managed Sybase

DROP TABLE [TempTable]

