﻿BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[SimpleBulkCopyTable]', N'U') IS NOT NULL)
	DROP TABLE [SimpleBulkCopyTable]

BeforeExecute
-- SqlServer.2005

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
-- SqlServer.2005 (asynchronously)

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
SELECT 3

BeforeExecute
INSERT ASYNC BULK [SimpleBulkCopyTable](Id)

BeforeExecute
INSERT ASYNC BULK [SimpleBulkCopyTable](Id)

BeforeExecute
-- SqlServer.2005 (asynchronously)

INSERT INTO [SimpleBulkCopyTable]
(
	[Id]
)
SELECT 30

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[SimpleBulkCopyTable]', N'U') IS NOT NULL)
	DROP TABLE [SimpleBulkCopyTable]

