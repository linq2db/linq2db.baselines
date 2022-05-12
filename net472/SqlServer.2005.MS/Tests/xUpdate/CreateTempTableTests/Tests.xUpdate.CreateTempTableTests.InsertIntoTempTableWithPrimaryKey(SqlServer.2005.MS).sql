﻿BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

CREATE TABLE [#TableWithPrimaryKey2]
(
	[Key] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Key])
)

BeforeExecute
INSERT BULK [#TableWithPrimaryKey2](Key)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[#TableWithPrimaryKey2]', N'U') IS NOT NULL)
	DROP TABLE [#TableWithPrimaryKey2]

