﻿BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Issue4160Person]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[Issue4160Person]', N'U') IS NULL)
	CREATE TABLE [Issue4160Person]
	(
		[Code] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Issue4160City]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[Issue4160City]', N'U') IS NULL)
	CREATE TABLE [Issue4160City]
	(
		[Code] NVarChar(4000)     NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016
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
-- SqlServer.2016.MS SqlServer.2016

SELECT DISTINCT
	(
		SELECT TOP (1)
			[cc].[Name]
		FROM
			[Issue4160City] [cc]
		WHERE
			([cc].[Code] = [pe].[Code] OR [cc].[Code] IS NULL AND [pe].[Code] IS NULL)
	)
FROM
	[Issue4160Person] [pe]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Issue4160City]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [Issue4160Person]

