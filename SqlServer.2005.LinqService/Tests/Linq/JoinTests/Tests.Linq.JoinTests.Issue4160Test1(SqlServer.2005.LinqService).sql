BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue4160Person]', N'U') IS NOT NULL)
	DROP TABLE [Issue4160Person]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue4160Person]', N'U') IS NULL)
	CREATE TABLE [Issue4160Person]
	(
		[Code] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005
DECLARE @Code NVarChar(4000) -- String
SET     @Code = N'SD'

INSERT INTO [Issue4160Person]
(
	[Code]
)
VALUES
(
	@Code
)

BeforeExecute
-- SqlServer.2005
DECLARE @Code NVarChar(4000) -- String
SET     @Code = N'SD'

INSERT INTO [Issue4160Person]
(
	[Code]
)
VALUES
(
	@Code
)

BeforeExecute
-- SqlServer.2005
DECLARE @Code NVarChar(4000) -- String
SET     @Code = N'SH'

INSERT INTO [Issue4160Person]
(
	[Code]
)
VALUES
(
	@Code
)

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue4160City]', N'U') IS NOT NULL)
	DROP TABLE [Issue4160City]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue4160City]', N'U') IS NULL)
	CREATE TABLE [Issue4160City]
	(
		[Code] NVarChar(4000)     NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2005
DECLARE @Code NVarChar(4000) -- String
SET     @Code = N'SD'
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'SYDNEY'

INSERT INTO [Issue4160City]
(
	[Code],
	[Name]
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- SqlServer.2005
DECLARE @Code NVarChar(4000) -- String
SET     @Code = N'SD'
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'SUNDAY'

INSERT INTO [Issue4160City]
(
	[Code],
	[Name]
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- SqlServer.2005
DECLARE @Code NVarChar(4000) -- String
SET     @Code = N'SH'
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'SYDHIP'

INSERT INTO [Issue4160City]
(
	[Code],
	[Name]
)
VALUES
(
	@Code,
	@Name
)

BeforeExecute
-- SqlServer.2005

SELECT DISTINCT
	[t1].[Name]
FROM
	[Issue4160Person] [pe]
		LEFT JOIN (
			SELECT
				[cc].[Name],
				ROW_NUMBER() OVER (PARTITION BY [cc].[Code] ORDER BY [cc].[Code]) as [rn],
				[cc].[Code]
			FROM
				[Issue4160City] [cc]
		) [t1] ON ([t1].[Code] = [pe].[Code] OR [t1].[Code] IS NULL AND [pe].[Code] IS NULL) AND [t1].[rn] <= 1

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue4160City]', N'U') IS NOT NULL)
	DROP TABLE [Issue4160City]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[Issue4160Person]', N'U') IS NOT NULL)
	DROP TABLE [Issue4160Person]

