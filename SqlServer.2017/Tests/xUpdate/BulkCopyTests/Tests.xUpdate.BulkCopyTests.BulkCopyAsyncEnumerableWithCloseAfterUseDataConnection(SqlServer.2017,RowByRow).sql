﻿BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [SimpleBulkCopyTable]

BeforeExecute
-- SqlServer.2017

IF (OBJECT_ID(N'[SimpleBulkCopyTable]', N'U') IS NULL)
	CREATE TABLE [SimpleBulkCopyTable]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2017 (asynchronously)
DECLARE @Id Int -- Int32
SET     @Id = 2

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(
	@Id
)

BeforeExecute
-- SqlServer.2017

DROP TABLE IF EXISTS [SimpleBulkCopyTable]

