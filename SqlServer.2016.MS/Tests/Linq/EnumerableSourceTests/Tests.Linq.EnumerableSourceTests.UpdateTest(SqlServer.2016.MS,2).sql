﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

UPDATE
	[u]
SET
	[u].[Value] = [r].[Value]
FROM
	[TableToInsert] [u],
	(VALUES
		(3,N'Janet Updated'), (4,N'Doe Updated')
	) [r]([Id], [Value])
WHERE
	[u].[Id] = [r].[Id]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

