BeforeExecute
-- SqlServer.2005

CREATE TABLE [SimpleBulkCopyTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlServer.2005

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
SELECT 1

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[SimpleBulkCopyTable]', N'U') IS NOT NULL)
	DROP TABLE [SimpleBulkCopyTable]

