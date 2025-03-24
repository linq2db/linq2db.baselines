﻿BeforeExecute
--  SqlServer.2005.MS SqlServer.2005

SELECT TOP (1)
	[x].[Id],
	[t1].[Id]
FROM
	[UserGroup] [x]
		OUTER APPLY (
			SELECT TOP (1)
				[a_FirstUserWithMultipleParameters].[Id]
			FROM
				[User] [a_FirstUserWithMultipleParameters]
			WHERE
				[a_FirstUserWithMultipleParameters].[UserGroupId] = [x].[Id]
		) [t1]

