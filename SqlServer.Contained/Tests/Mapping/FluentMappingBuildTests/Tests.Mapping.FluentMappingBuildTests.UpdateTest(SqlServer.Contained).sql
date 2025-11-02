-- SqlServer.Contained SqlServer.2019

IF (OBJECT_ID(N'[FluentTemp]', N'U') IS NULL)
	CREATE TABLE [FluentTemp]
	(
		[ID]       Int          NOT NULL,
		[Value]    NVarChar(20)     NULL,
		[LastName] NVarChar(20)     NULL
	)

-- SqlServer.Contained SqlServer.2019
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(20) -- String
SET     @Name = N'John'
DECLARE @LastName NVarChar(20) -- String
SET     @LastName = N'Doe'

INSERT INTO [FluentTemp]
(
	[ID],
	[Value],
	[LastName]
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

-- SqlServer.Contained SqlServer.2019
DECLARE @Name NVarChar(20) -- String
SET     @Name = N'John II'
DECLARE @LastName NVarChar(20) -- String
SET     @LastName = N'Dory'

UPDATE
	[FluentTemp]
SET
	[Value] = @Name,
	[LastName] = @LastName
WHERE
	[FluentTemp].[ID] = 1

-- SqlServer.Contained SqlServer.2019

DROP TABLE IF EXISTS [FluentTemp]

