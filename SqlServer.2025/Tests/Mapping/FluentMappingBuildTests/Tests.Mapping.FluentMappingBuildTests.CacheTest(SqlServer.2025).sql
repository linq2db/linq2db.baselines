﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

IF (OBJECT_ID(N'[FluentTemp]', N'U') IS NULL)
	CREATE TABLE [FluentTemp]
	(
		[ID]       Int          NOT NULL,
		[Value]    NVarChar(20)     NULL,
		[LastName] NVarChar(20)     NULL
	)

BeforeExecute
-- SqlServer.2025 SqlServer.2022
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
-- SqlServer.2025 SqlServer.2022

SELECT
	[t].[ID],
	[t].[Value],
	[t].[LastName]
FROM
	[FluentTemp] [t]
WHERE
	[t].[ID] = 1

BeforeExecute
-- SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [FluentTemp]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

IF (OBJECT_ID(N'[FluentTemp]', N'U') IS NULL)
	CREATE TABLE [FluentTemp]
	(
		[ID]       Int          NOT NULL,
		[Value]    NVarChar(20)     NULL,
		[LastName] NVarChar(20)     NULL
	)

BeforeExecute
-- SqlServer.2025 SqlServer.2022
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
-- SqlServer.2025 SqlServer.2022

SELECT
	[t].[ID],
	[t].[Value],
	[t].[LastName]
FROM
	[FluentTemp] [t]
WHERE
	[t].[ID] = 1

BeforeExecute
-- SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [FluentTemp]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

IF (OBJECT_ID(N'[FluentTemp]', N'U') IS NULL)
	CREATE TABLE [FluentTemp]
	(
		[ID]       Int          NOT NULL,
		[Column]   NVarChar(20)     NULL,
		[LastName] NVarChar(20)     NULL
	)

BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(20) -- String
SET     @Name = N'John'
DECLARE @LastName NVarChar(20) -- String
SET     @LastName = N'Doe'

INSERT INTO [FluentTemp]
(
	[ID],
	[Column],
	[LastName]
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t].[ID],
	[t].[Column],
	[t].[LastName]
FROM
	[FluentTemp] [t]
WHERE
	[t].[ID] = 1

BeforeExecute
-- SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [FluentTemp]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

IF (OBJECT_ID(N'[FluentTemp]', N'U') IS NULL)
	CREATE TABLE [FluentTemp]
	(
		[ID]       Int          NOT NULL,
		[Column]   NVarChar(20)     NULL,
		[LastName] NVarChar(20)     NULL
	)

BeforeExecute
-- SqlServer.2025 SqlServer.2022
DECLARE @ID Int -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(20) -- String
SET     @Name = N'John'
DECLARE @LastName NVarChar(20) -- String
SET     @LastName = N'Doe'

INSERT INTO [FluentTemp]
(
	[ID],
	[Column],
	[LastName]
)
VALUES
(
	@ID,
	@Name,
	@LastName
)

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t].[ID],
	[t].[Column],
	[t].[LastName]
FROM
	[FluentTemp] [t]
WHERE
	[t].[ID] = 1

BeforeExecute
-- SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [FluentTemp]

