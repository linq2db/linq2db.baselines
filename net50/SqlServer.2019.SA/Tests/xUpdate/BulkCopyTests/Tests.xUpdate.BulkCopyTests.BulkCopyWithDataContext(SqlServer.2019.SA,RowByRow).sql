BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

CREATE TABLE [SimpleBulkCopyTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017
DECLARE @Id Int -- Int32
SET     @Id = 1

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2019.SA SqlServer.2017

DROP TABLE IF EXISTS [SimpleBulkCopyTable]

