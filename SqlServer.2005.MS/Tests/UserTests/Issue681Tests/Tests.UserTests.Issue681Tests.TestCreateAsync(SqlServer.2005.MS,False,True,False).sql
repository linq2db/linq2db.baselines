﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue681Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue681Table]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue681Table]', N'U') IS NULL)
	CREATE TABLE [Issue681Table]
	(
		[ID]    Int NOT NULL,
		[Value] Int NOT NULL,

		CONSTRAINT [PK_Issue681Table] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue681Table2]', N'U') IS NOT NULL)
	DROP TABLE [Issue681Table2]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

CREATE TABLE [TestDataMS]..[Issue681Table2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_Issue681Table2] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005 (asynchronously)

IF (OBJECT_ID(N'[Issue681Table2]', N'U') IS NOT NULL)
	DROP TABLE [Issue681Table2]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[Issue681Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue681Table]

