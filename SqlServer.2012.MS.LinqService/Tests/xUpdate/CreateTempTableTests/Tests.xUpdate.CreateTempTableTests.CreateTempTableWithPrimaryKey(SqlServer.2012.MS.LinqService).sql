﻿BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

CREATE TABLE [tempdb]..[#TableWithPrimaryKey]
(
	[Key] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Key])
)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[tempdb]..[#TableWithPrimaryKey]', N'U') IS NOT NULL)
	DROP TABLE [tempdb]..[#TableWithPrimaryKey]

