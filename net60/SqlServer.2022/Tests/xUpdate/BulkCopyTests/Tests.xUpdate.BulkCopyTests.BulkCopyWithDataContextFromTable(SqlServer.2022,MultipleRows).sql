BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [SimpleBulkCopyTable]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[SimpleBulkCopyTable]', N'U') IS NULL)
	CREATE TABLE [SimpleBulkCopyTable]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
INSERT BULK [SimpleBulkCopyTable](Id)

BeforeExecute
INSERT BULK [SimpleBulkCopyTable](Id)

BeforeExecute
-- SqlServer.2022

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(3)

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [SimpleBulkCopyTable]

