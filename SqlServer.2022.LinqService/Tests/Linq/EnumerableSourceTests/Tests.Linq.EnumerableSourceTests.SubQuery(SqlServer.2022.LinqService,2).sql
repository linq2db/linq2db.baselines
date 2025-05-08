﻿BeforeExecute
-- SqlServer.2022

SELECT
	[t].[Id],
	[t].[Value]
FROM
	[TableToInsert] [t]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(VALUES
				(3,N'Janet',3,N'Janet'), (4,N'Doe',4,N'Doe')
			) [r]([Id], [Value], [Id0], [Value0])
		WHERE
			[t].[Id] = [r].[Id] AND ([t].[Value] = [r].[Value] OR [t].[Value] IS NULL AND [r].[Value] IS NULL)
	)

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[TableToInsert] [t1]

