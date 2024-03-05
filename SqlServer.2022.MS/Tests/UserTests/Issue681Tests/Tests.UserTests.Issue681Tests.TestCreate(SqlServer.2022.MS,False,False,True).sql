﻿BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Issue681Table]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[Issue681Table]', N'U') IS NULL)
	CREATE TABLE [Issue681Table]
	(
		[ID]    Int NOT NULL,
		[Value] Int NOT NULL,

		CONSTRAINT [PK_Issue681Table] PRIMARY KEY CLUSTERED ([ID])
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT TOP (1)
	SCHEMA_NAME()
FROM
	[LinqDataTypes] [_]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Issue681Table2]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [dbo].[Issue681Table2]
(
	[ID]    Int NOT NULL,
	[Value] Int NOT NULL,

	CONSTRAINT [PK_Issue681Table2] PRIMARY KEY CLUSTERED ([ID])
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Issue681Table2]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [Issue681Table]

