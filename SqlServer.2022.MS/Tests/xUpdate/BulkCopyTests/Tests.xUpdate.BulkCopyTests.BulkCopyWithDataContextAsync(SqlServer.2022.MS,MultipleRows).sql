BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [SimpleBulkCopyTable]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[SimpleBulkCopyTable]', N'U') IS NULL)
	CREATE TABLE [SimpleBulkCopyTable]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022 (asynchronously)

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(2)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [SimpleBulkCopyTable]

