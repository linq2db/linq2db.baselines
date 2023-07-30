BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [SimpleBulkCopyTable]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

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
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(3)

BeforeExecute
INSERT ASYNC BULK [SimpleBulkCopyTable](Id)

BeforeExecute
INSERT ASYNC BULK [SimpleBulkCopyTable](Id)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017 (asynchronously)

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(30)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [SimpleBulkCopyTable]

