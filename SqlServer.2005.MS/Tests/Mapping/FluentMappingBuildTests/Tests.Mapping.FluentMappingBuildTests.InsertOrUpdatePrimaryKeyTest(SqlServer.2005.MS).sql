-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[FluentTemp_InsertOrUpdate]', N'U') IS NOT NULL)
	DROP TABLE [FluentTemp_InsertOrUpdate]

-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[FluentTemp_InsertOrUpdate]', N'U') IS NULL)
	CREATE TABLE [FluentTemp_InsertOrUpdate]
	(
		[ID]   Int          NOT NULL,
		[Name] NVarChar(20)     NULL,

		CONSTRAINT [PK_FluentTemp_InsertOrUpdate] PRIMARY KEY CLUSTERED ([ID])
	)

-- SqlServer.2005.MS SqlServer.2005
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(20) -- String
SET     @Name = N'John'

INSERT INTO [FluentTemp_InsertOrUpdate]
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
	[FluentTemp_InsertOrUpdate]
SET
	[ID] = [t1].[ID],
	[Name] = [t1].[Name]
FROM
	[FluentTemp_InsertOrUpdate] [t1]
WHERE
	[t1].[ID] = 1

IF @@ROWCOUNT = 0
BEGIN
	INSERT INTO [FluentTemp_InsertOrUpdate]
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

IF (OBJECT_ID(N'[FluentTemp_InsertOrUpdate]', N'U') IS NOT NULL)
	DROP TABLE [FluentTemp_InsertOrUpdate]

