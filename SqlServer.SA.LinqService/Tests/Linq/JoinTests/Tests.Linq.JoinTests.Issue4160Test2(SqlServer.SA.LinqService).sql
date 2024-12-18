BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue4160Person]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Issue4160Person]', N'U') IS NULL)
	CREATE TABLE [Issue4160Person]
	(
		[Code] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue4160City]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Issue4160City]', N'U') IS NULL)
	CREATE TABLE [Issue4160City]
	(
		[Code] NVarChar(4000)     NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019
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
-- SqlServer.SA SqlServer.2019

SELECT DISTINCT
	[cc_1].[Value_1]
FROM
	[Issue4160Person] [t1]
		OUTER APPLY (
			SELECT TOP (1)
				[cc].[Name] as [Value_1]
			FROM
				[Issue4160City] [cc]
			WHERE
				[cc].[Code] = [t1].[Code] AND [cc].[Code] IS NOT NULL AND [t1].[Code] IS NOT NULL OR
				[cc].[Code] IS NULL AND [t1].[Code] IS NULL
		) [cc_1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue4160City]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Issue4160Person]

