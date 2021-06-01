BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [SimpleBulkCopyTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
INSERT BULK [SimpleBulkCopyTable](Id)

BeforeExecute
INSERT BULK [SimpleBulkCopyTable](Id)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(3)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE IF EXISTS [SimpleBulkCopyTable]

