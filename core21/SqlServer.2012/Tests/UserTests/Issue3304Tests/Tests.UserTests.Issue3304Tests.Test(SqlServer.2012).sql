BeforeExecute
-- SqlServer.2012

CREATE TABLE [Table]
(
	[Version]   Int                  NULL,
	[UpdatedOn] DateTime             NULL,
	[UserId]    UniqueIdentifier NOT NULL,
	[Value]     UniqueIdentifier     NULL,

	CONSTRAINT [PK_Table] PRIMARY KEY CLUSTERED ([UserId])
)

BeforeExecute
-- SqlServer.2012
DECLARE @Version Int -- Int32
SET     @Version = 0

MERGE INTO [Table] [Target]
USING (VALUES
	('1d0681ba-ccc6-4448-a192-e7d9c3b2dd8c',@Version,NULL,NULL)
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
-- SqlServer.2012

IF (OBJECT_ID(N'[Table]', N'U') IS NOT NULL)
	DROP TABLE [Table]

