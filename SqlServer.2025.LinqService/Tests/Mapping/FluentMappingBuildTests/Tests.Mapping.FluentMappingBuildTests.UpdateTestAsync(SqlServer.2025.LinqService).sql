BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

IF (OBJECT_ID(N'[FluentTemp]', N'U') IS NULL)
	CREATE TABLE [FluentTemp]
	(
		[ID]       Int          NOT NULL,
		[Value]    NVarChar(20)     NULL,
		[LastName] NVarChar(20)     NULL
	)

BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)
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
-- SqlServer.2025 SqlServer.2022 (asynchronously)
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
-- SqlServer.2025 SqlServer.2022 (asynchronously)

DROP TABLE IF EXISTS [FluentTemp]

