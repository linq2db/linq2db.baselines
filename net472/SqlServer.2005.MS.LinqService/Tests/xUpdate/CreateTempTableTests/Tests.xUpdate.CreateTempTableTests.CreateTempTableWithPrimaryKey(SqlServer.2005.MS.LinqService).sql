﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

CREATE TABLE [#TableWithPrimaryKey]
(
	[Key] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Key])
)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[#TableWithPrimaryKey]', N'U') IS NOT NULL)
	DROP TABLE [#TableWithPrimaryKey]

