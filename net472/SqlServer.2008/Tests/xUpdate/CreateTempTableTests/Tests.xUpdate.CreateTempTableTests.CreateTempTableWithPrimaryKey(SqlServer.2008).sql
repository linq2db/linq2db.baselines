﻿BeforeExecute
-- SqlServer.2008

CREATE TABLE [#TableWithPrimaryKey]
(
	[Key] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Key])
)

BeforeExecute
-- SqlServer.2008

IF (OBJECT_ID(N'[tempdb]..[#TableWithPrimaryKey]', N'U') IS NOT NULL)
	DROP TABLE [#TableWithPrimaryKey]

