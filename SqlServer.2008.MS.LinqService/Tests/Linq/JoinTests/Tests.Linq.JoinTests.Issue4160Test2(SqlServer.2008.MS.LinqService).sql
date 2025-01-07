BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4160Person]', N'U') IS NOT NULL)
	DROP TABLE [Issue4160Person]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4160Person]', N'U') IS NULL)
	CREATE TABLE [Issue4160Person]
	(
		[Code] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
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
-- SqlServer.2008.MS SqlServer.2008
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
-- SqlServer.2008.MS SqlServer.2008
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
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4160City]', N'U') IS NOT NULL)
	DROP TABLE [Issue4160City]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4160City]', N'U') IS NULL)
	CREATE TABLE [Issue4160City]
	(
		[Code] NVarChar(4000)     NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
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
-- SqlServer.2008.MS SqlServer.2008
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
-- SqlServer.2008.MS SqlServer.2008
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
-- SqlServer.2008.MS SqlServer.2008

SELECT DISTINCT
	[cc_1].[Name]
FROM
	[Issue4160Person] [t1]
		OUTER APPLY (
			SELECT TOP (1)
				[cc].[Name]
			FROM
				[Issue4160City] [cc]
			WHERE
				[cc].[Code] = [t1].[Code] OR [cc].[Code] IS NULL AND [t1].[Code] IS NULL
		) [cc_1]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4160City]', N'U') IS NOT NULL)
	DROP TABLE [Issue4160City]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4160Person]', N'U') IS NOT NULL)
	DROP TABLE [Issue4160Person]

