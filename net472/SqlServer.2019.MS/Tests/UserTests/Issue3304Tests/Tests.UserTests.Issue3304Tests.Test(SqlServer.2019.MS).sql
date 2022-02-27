﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [Table]
(
	[Version]   Int                  NULL,
	[UpdatedOn] DateTime             NULL,
	[UserId]    UniqueIdentifier NOT NULL,
	[Value]     UniqueIdentifier     NULL,

	CONSTRAINT [PK_Table] PRIMARY KEY CLUSTERED ([UserId])
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019
DECLARE @Version Int -- Int32
SET     @Version = 0

MERGE INTO [Table] [Target]
USING (VALUES
	('bc7b663d-0fde-4327-8f92-5d8cc3a11d11',@Version,NULL,NULL)
) [Source]
(
	[UserId],
	[Version_1],
	[UpdatedOn],
	[Value_1]
)
ON ([Target].[UserId] = [Source].[UserId])

WHEN NOT MATCHED THEN
INSERT
(
	[Version],
	[UpdatedOn],
	[UserId],
	[Value]
)
VALUES
(
	[Source].[Version_1],
	[Source].[UpdatedOn],
	[Source].[UserId],
	[Source].[Value_1]
)
;

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Table]

