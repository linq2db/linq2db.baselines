﻿BeforeExecute
-- SqlServer.2014

DELETE [t]
FROM
	[TableToInsert] [t]
		INNER JOIN (VALUES
			(3), (4)
		) [r]([Id]) ON [t].[Id] = [r].[Id]

