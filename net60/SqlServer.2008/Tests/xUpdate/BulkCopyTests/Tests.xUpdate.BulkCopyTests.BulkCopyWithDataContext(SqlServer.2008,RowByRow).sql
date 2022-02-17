﻿BeforeExecute
-- SqlServer.2008

CREATE TABLE [SimpleBulkCopyTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlServer.2008
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
-- SqlServer.2008

IF (OBJECT_ID(N'[SimpleBulkCopyTable]', N'U') IS NOT NULL)
	DROP TABLE [SimpleBulkCopyTable]

