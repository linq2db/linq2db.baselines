-- SqlServer.2014

IF (OBJECT_ID(N'[FluentTemp]', N'U') IS NOT NULL)
	DROP TABLE [FluentTemp]

-- SqlServer.2014

IF (OBJECT_ID(N'[FluentTemp]', N'U') IS NULL)
	CREATE TABLE [FluentTemp]
	(
		[ID]   Int          NOT NULL,
		[Name] NVarChar(20)     NULL,

		CONSTRAINT [PK_FluentTemp] PRIMARY KEY CLUSTERED ([ID])
	)

-- SqlServer.2014
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

-- SqlServer.2014

MERGE INTO [FluentTemp] [t1]
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

-- SqlServer.2014

IF (OBJECT_ID(N'[FluentTemp]', N'U') IS NOT NULL)
	DROP TABLE [FluentTemp]

