BeforeExecute
-- SqlServer.2019.SA SqlServer.2019

CREATE TABLE [SimpleBulkCopyTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
INSERT ASYNC BULK [SimpleBulkCopyTable](Id)

BeforeExecute
INSERT ASYNC BULK [SimpleBulkCopyTable](Id)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2019 (asynchronously)
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
-- SqlServer.2019.SA SqlServer.2019 (asynchronously)
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
-- SqlServer.2019.SA SqlServer.2019

DROP TABLE IF EXISTS [SimpleBulkCopyTable]

