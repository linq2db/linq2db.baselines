﻿BeforeExecute
-- SqlServer.Contained SqlServer.2019

CREATE TABLE [SimpleBulkCopyTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlServer.Contained SqlServer.2019 (asynchronously)
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
-- SqlServer.Contained SqlServer.2019 (asynchronously)
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
-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [SimpleBulkCopyTable]

