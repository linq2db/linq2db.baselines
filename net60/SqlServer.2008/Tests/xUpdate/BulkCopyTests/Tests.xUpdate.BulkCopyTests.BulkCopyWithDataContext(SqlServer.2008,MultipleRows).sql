﻿BeforeExecute
-- SqlServer.2008

CREATE TABLE [SimpleBulkCopyTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlServer.2008

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
VALUES
(1)

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[SimpleBulkCopyTable]', N'U') IS NOT NULL)
	DROP TABLE [SimpleBulkCopyTable]

