BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [SimpleBulkCopyTable]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

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
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 3

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
INSERT ASYNC BULK [SimpleBulkCopyTable](Id)

BeforeExecute
INSERT ASYNC BULK [SimpleBulkCopyTable](Id)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 30

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [SimpleBulkCopyTable]

