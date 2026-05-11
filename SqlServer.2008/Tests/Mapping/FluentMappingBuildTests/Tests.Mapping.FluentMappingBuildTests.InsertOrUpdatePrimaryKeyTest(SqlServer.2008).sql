-- SqlServer.2008

IF (OBJECT_ID(N'[FluentTemp_InsertOrUpdate]', N'U') IS NOT NULL)
	DROP TABLE [FluentTemp_InsertOrUpdate]

-- SqlServer.2008

IF (OBJECT_ID(N'[FluentTemp_InsertOrUpdate]', N'U') IS NULL)
	CREATE TABLE [FluentTemp_InsertOrUpdate]
	(
		[ID]   Int          NOT NULL,
		[Name] NVarChar(20)     NULL,

		CONSTRAINT [PK_FluentTemp_InsertOrUpdate] PRIMARY KEY CLUSTERED ([ID])
	)

-- SqlServer.2008
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

-- SqlServer.2008

MERGE INTO [FluentTemp_InsertOrUpdate] [t1]
USING (SELECT 1 AS [ID]) [s] ON
(
	[t1].[ID] = [s].[ID]
)
WHEN MATCHED THEN
	UPDATE 
	SET
		[ID] = [t1].[ID],
		[Name] = [t1].[Name]
WHEN NOT MATCHED THEN
	INSERT
	(
		[ID],
		[Name]
	)
	VALUES
	(
		1,
		N'John II'
	);

-- SqlServer.2008

IF (OBJECT_ID(N'[FluentTemp_InsertOrUpdate]', N'U') IS NOT NULL)
	DROP TABLE [FluentTemp_InsertOrUpdate]

