-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[FluentTemp_UpdateAsync]', N'U') IS NULL)
	CREATE TABLE [FluentTemp_UpdateAsync]
	(
		[ID]       Int          NOT NULL,
		[Value]    NVarChar(20)     NULL,
		[LastName] NVarChar(20)     NULL,

		CONSTRAINT [PK_FluentTemp_UpdateAsync] PRIMARY KEY CLUSTERED ([ID])
	)

-- SqlServer.2005.MS SqlServer.2005
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(20) -- String
SET     @Name = N'John'
DECLARE @LastName NVarChar(20) -- String
SET     @LastName = N'Doe'

INSERT INTO [FluentTemp_UpdateAsync]
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

-- SqlServer.2005.MS SqlServer.2005
DECLARE @Name NVarChar(20) -- String
SET     @Name = N'John II'
DECLARE @LastName NVarChar(20) -- String
SET     @LastName = N'Dory'

UPDATE
	[FluentTemp_UpdateAsync]
SET
	[Value] = @Name,
	[LastName] = @LastName
WHERE
	[FluentTemp_UpdateAsync].[ID] = 1

-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[FluentTemp_UpdateAsync]', N'U') IS NOT NULL)
	DROP TABLE [FluentTemp_UpdateAsync]

