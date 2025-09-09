﻿BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

CREATE TABLE IF NOT EXISTS [FluentTemp]
(
	[ID]       INTEGER      NOT NULL,
	[Value]    NVarChar(20)     NULL,
	[LastName] NVarChar(20)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = 'Doe'

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
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	[t].[ID],
	[t].[Value],
	[t].[LastName]
FROM
	[FluentTemp] [t]
WHERE
	[t].[ID] = 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

DROP TABLE IF EXISTS [FluentTemp]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

CREATE TABLE IF NOT EXISTS [FluentTemp]
(
	[ID]       INTEGER      NOT NULL,
	[Value]    NVarChar(20)     NULL,
	[LastName] NVarChar(20)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = 'Doe'

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
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	[t].[ID],
	[t].[Value],
	[t].[LastName]
FROM
	[FluentTemp] [t]
WHERE
	[t].[ID] = 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

DROP TABLE IF EXISTS [FluentTemp]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

CREATE TABLE IF NOT EXISTS [FluentTemp]
(
	[ID]       INTEGER      NOT NULL,
	[Column]   NVarChar(20)     NULL,
	[LastName] NVarChar(20)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = 'Doe'

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
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	[t].[ID],
	[t].[Column],
	[t].[LastName]
FROM
	[FluentTemp] [t]
WHERE
	[t].[ID] = 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

DROP TABLE IF EXISTS [FluentTemp]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

CREATE TABLE IF NOT EXISTS [FluentTemp]
(
	[ID]       INTEGER      NOT NULL,
	[Column]   NVarChar(20)     NULL,
	[LastName] NVarChar(20)     NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)
DECLARE @ID  -- Int32
SET     @ID = 1
DECLARE @Name NVarChar(4) -- String
SET     @Name = 'John'
DECLARE @LastName NVarChar(3) -- String
SET     @LastName = 'Doe'

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
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

SELECT
	[t].[ID],
	[t].[Column],
	[t].[LastName]
FROM
	[FluentTemp] [t]
WHERE
	[t].[ID] = 1

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite (asynchronously)

DROP TABLE IF EXISTS [FluentTemp]

