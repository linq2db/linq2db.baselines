﻿BeforeExecute
-- SqlServer.2019

UPDATE
	[u]
SET
	[u].[Value] = [r].[Value]
FROM
	[TableToInsert] [u],
	(VALUES
		(2,N'Janet Updated'), (3,N'Doe Updated')
	) [r]([Id], [Value])
WHERE
	[u].[Id] = [r].[Id]

BeforeExecute
-- SqlServer.2019

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

