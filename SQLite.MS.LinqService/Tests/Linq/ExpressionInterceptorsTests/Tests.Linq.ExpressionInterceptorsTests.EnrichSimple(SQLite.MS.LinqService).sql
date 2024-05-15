BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [User]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [User]
(
	[UserId]     INTEGER       NOT NULL,
	[FirstName]  NVarChar(255)     NULL,
	[LastName]   NVarChar(255)     NULL,
	[Supervisor] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @UserId  -- Int32
SET     @UserId = 1
DECLARE @FirstName NVarChar(5) -- String
SET     @FirstName = 'First'
DECLARE @LastName NVarChar(4) -- String
SET     @LastName = 'Last'
DECLARE @Supervisor NVarChar(3) -- String
SET     @Supervisor = 'Sup'

INSERT INTO [User]
(
	[UserId],
	[FirstName],
	[LastName],
	[Supervisor]
)
VALUES
(
	@UserId,
	@FirstName,
	@LastName,
	@Supervisor
)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE IF NOT EXISTS [SampleClass]
(
	[Id]    INTEGER      NOT NULL,
	[Value] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @Id  -- Int32
SET     @Id = 1
DECLARE @Value NVarChar(4) -- String
SET     @Value = 'Some'

INSERT INTO [SampleClass]
(
	[Id],
	[Value]
)
VALUES
(
	@Id,
	@Value
)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[u].[UserId],
	[u].[FirstName],
	[u].[Supervisor]
FROM
	[SampleClass] [t1]
		CROSS JOIN [User] [u]
LIMIT 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [SampleClass]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [User]

