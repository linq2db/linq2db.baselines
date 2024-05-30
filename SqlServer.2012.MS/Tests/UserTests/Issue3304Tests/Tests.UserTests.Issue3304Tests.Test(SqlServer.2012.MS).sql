BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Table]', N'U') IS NOT NULL)
	DROP TABLE [Table]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Table]', N'U') IS NULL)
	CREATE TABLE [Table]
	(
		[Version]   Int                  NULL,
		[UpdatedOn] DateTime2            NULL,
		[UserId]    UniqueIdentifier NOT NULL,
		[Value]     UniqueIdentifier     NULL,

		CONSTRAINT [PK_Table] PRIMARY KEY CLUSTERED ([UserId])
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012
DECLARE @Version Int -- Int32
SET     @Version = 0

MERGE INTO [Table] [Target]
USING (VALUES
	('bc7b663d-0fde-4327-8f92-5d8cc3a11d11',@Version,NULL,NULL)
) [Source]
(
	[source_UserId],
	[source_Version],
	[source_UpdatedOn],
	[source_Value]
)
ON ([Target].[UserId] = [Source].[source_UserId])

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
	[Source].[source_Version],
	[Source].[source_UpdatedOn],
	[Source].[source_UserId],
	[Source].[source_Value]
)
;

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Table]', N'U') IS NOT NULL)
	DROP TABLE [Table]

