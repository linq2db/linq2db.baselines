BeforeExecute
-- SqlServer.2016

CREATE TABLE [SimpleBulkCopyTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlServer.2016

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SqlServer.2016

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(2)

BeforeExecute
-- SqlServer.2016
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
-- SqlServer.2016

DROP TABLE IF EXISTS [SimpleBulkCopyTable]

