-- SqlServer.2012

IF (OBJECT_ID(N'[FluentTemp]', N'U') IS NOT NULL)
	DROP TABLE [FluentTemp]

-- SqlServer.2012

IF (OBJECT_ID(N'[FluentTemp]', N'U') IS NULL)
	CREATE TABLE [FluentTemp]
	(
		[ID]   Int          NOT NULL,
		[Name] NVarChar(20)     NULL,

		CONSTRAINT [PK_FluentTemp] PRIMARY KEY CLUSTERED ([ID])
	)

-- SqlServer.2012
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(20) -- String
SET     @Name = N'John'

INSERT INTO [FluentTemp]
(
	[ID],
	[Name]
)
VALUES
(
	@ID,
	@Name
)

-- SqlServer.2012

MERGE INTO [FluentTemp] [Target]
USING (VALUES
	(1,N'John II')
) [Source]
(
	[ID],
	[Name]
)
ON ([Target].[ID] = [Source].[ID])

WHEN MATCHED THEN
UPDATE
SET
	[Name] = [Source].[Name]

WHEN NOT MATCHED THEN
INSERT
(
	[ID],
	[Name]
)
VALUES
(
	[Source].[ID],
	[Source].[Name]
)
;

-- SqlServer.2012

IF (OBJECT_ID(N'[FluentTemp]', N'U') IS NOT NULL)
	DROP TABLE [FluentTemp]

