﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

CREATE TABLE [SimpleBulkCopyTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
SELECT 1

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
SELECT 2

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[SimpleBulkCopyTable]', N'U') IS NOT NULL)
	DROP TABLE [SimpleBulkCopyTable]

