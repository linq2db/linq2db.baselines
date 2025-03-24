﻿BeforeExecute
--  SqlServer.2016.MS SqlServer.2016

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [t1]

BeforeExecute
--  SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Issue681Table2]

BeforeExecute
--  SqlServer.2016.MS SqlServer.2016

CREATE TABLE [dbo].[Issue681Table2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_Issue681Table2] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
--  SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Issue681Table2]

