﻿BeforeExecute
--  SqlServer.2014.MS SqlServer.2014

DELETE [t]
FROM
	[TableToInsert] [t]
		INNER JOIN (VALUES
			(2), (3)
		) [r]([Id]) ON [t].[Id] = [r].[Id]

