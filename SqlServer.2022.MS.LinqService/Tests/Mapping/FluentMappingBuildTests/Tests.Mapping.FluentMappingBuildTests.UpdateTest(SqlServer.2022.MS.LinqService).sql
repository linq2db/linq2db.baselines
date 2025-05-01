BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[FluentTemp]', N'U') IS NULL)
	CREATE TABLE [FluentTemp]
	(
		[ID]       Int          NOT NULL,
		[Value]    NVarChar(20)     NULL,
		[LastName] NVarChar(20)     NULL
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
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

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022
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

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [FluentTemp]

