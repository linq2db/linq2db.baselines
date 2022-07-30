BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [SimpleBulkCopyTable]

BeforeExecute
-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[SimpleBulkCopyTable]', N'U') IS NULL)
	CREATE TABLE [SimpleBulkCopyTable]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
INSERT ASYNC BULK [SimpleBulkCopyTable](Id)

BeforeExecute
INSERT ASYNC BULK [SimpleBulkCopyTable](Id)

BeforeExecute
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [SimpleBulkCopyTable]

