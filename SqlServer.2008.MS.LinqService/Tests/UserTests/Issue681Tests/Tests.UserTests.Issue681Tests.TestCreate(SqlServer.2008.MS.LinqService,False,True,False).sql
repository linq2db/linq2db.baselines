﻿BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

SELECT TOP (1)
	DB_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue681Table2]', N'U') IS NOT NULL)
	DROP TABLE [Issue681Table2]

BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

CREATE TABLE [TestDataMS]..[Issue681Table2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_Issue681Table2] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
--  SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue681Table2]', N'U') IS NOT NULL)
	DROP TABLE [Issue681Table2]

