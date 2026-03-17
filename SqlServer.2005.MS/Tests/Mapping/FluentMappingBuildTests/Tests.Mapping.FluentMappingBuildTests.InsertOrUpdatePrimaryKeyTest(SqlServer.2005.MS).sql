-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[FluentTemp]', N'U') IS NOT NULL)
	DROP TABLE [FluentTemp]

-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[FluentTemp]', N'U') IS NULL)
	CREATE TABLE [FluentTemp]
	(
		[ID]   Int          NOT NULL,
		[Name] NVarChar(20)     NULL,

		CONSTRAINT [PK_FluentTemp] PRIMARY KEY CLUSTERED ([ID])
	)

-- SqlServer.2005.MS SqlServer.2005
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

-- SqlServer.2005.MS SqlServer.2005

UPDATE
	[FluentTemp]
SET
	[ID] = [t1].[ID],
	[Name] = [t1].[Name]
FROM
	[FluentTemp] [t1]
WHERE
	[t1].[ID] = 1

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [FluentTemp]
	(
		[ID],
		[Name]
	)
	VALUES
	(
		1,
		N'John II'
	)
END

-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[FluentTemp]', N'U') IS NOT NULL)
	DROP TABLE [FluentTemp]

