﻿BeforeExecute
--  SqlServer.2022.MS SqlServer.2022

CREATE TABLE [tempdb]..[#TableWithPrimaryKey]
(
	[Key] Int NOT NULL,

	PRIMARY KEY CLUSTERED ([Key])
)

BeforeExecute
--  SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#TableWithPrimaryKey]

