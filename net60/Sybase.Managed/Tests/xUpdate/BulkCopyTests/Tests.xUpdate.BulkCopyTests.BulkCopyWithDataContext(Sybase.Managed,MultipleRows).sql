BeforeExecute
-- Sybase.Managed Sybase

CREATE TABLE [SimpleBulkCopyTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- Sybase.Managed Sybase

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
SELECT 1

BeforeExecute
-- Sybase.Managed Sybase

IF (OBJECT_ID(N'SimpleBulkCopyTable') IS NOT NULL)
	DROP TABLE [SimpleBulkCopyTable]

