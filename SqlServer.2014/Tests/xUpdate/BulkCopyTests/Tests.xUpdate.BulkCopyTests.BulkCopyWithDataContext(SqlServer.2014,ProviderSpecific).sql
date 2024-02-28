BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[SimpleBulkCopyTable]', N'U') IS NOT NULL)
	DROP TABLE [SimpleBulkCopyTable]

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[SimpleBulkCopyTable]', N'U') IS NULL)
	CREATE TABLE [SimpleBulkCopyTable]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
INSERT BULK [SimpleBulkCopyTable](Id)

BeforeExecute
-- SqlServer.2014

IF (OBJECT_ID(N'[SimpleBulkCopyTable]', N'U') IS NOT NULL)
	DROP TABLE [SimpleBulkCopyTable]

