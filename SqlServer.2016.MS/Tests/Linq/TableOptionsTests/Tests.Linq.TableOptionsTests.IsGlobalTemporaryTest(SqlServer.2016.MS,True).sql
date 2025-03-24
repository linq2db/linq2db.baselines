﻿BeforeExecute
--  SqlServer.2016.MS SqlServer.2016

CREATE TABLE [tempdb]..[##IsGlobalTemporaryTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
--  SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[##IsGlobalTemporaryTable] [t1]

BeforeExecute
--  SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [tempdb]..[##IsGlobalTemporaryTable]

