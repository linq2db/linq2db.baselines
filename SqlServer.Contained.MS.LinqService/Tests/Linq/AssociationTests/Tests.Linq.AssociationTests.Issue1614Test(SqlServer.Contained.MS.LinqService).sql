﻿BeforeExecute
-- SqlServer.Contained.MS SqlServer.2019 (asynchronously)

SELECT
	[t1].[Id],
	[t1].[AssociatedObjectId],
	[t1].[AssociationTypeId],
	[a_User].[Id]
FROM
	[Resource] [t1]
		LEFT JOIN [Lookup] [a_AssociationTypeCode] ON [t1].[AssociationTypeId] = [a_AssociationTypeCode].[Id]
		LEFT JOIN [User] [a_User] ON [a_AssociationTypeCode].[Type] = N'us' AND [a_User].[Id] = [t1].[AssociatedObjectId]

