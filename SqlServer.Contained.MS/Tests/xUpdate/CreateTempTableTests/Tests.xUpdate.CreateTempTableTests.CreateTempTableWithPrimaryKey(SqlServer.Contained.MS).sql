﻿BeforeExecute
--  SqlServer.Contained.MS SqlServer.2019

CREATE TABLE [tempdb]..[#TableWithPrimaryKey]
(
	[Key] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Key])
)

BeforeExecute
--  SqlServer.Contained.MS SqlServer.2019

DROP TABLE IF EXISTS [tempdb]..[#TableWithPrimaryKey]

