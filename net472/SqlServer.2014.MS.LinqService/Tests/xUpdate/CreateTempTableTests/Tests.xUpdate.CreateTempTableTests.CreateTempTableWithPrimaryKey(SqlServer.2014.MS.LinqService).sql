﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

CREATE TABLE [#TableWithPrimaryKey]
(
	[Key] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Key])
)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[#TableWithPrimaryKey]', N'U') IS NOT NULL)
	DROP TABLE [#TableWithPrimaryKey]

