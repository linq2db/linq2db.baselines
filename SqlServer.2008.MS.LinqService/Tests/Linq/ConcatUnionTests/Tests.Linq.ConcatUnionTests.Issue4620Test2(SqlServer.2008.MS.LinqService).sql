BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4620Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue4620Table]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4620Table]', N'U') IS NULL)
	CREATE TABLE [Issue4620Table]
	(
		[Id]         Int     NOT NULL,
		[IdContract] Int         NULL,
		[IdClient]   Int         NULL,
		[Sum]        Decimal NOT NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @IdContract Int -- Int32
SET     @IdContract = NULL
DECLARE @IdClient Int -- Int32
SET     @IdClient = 1
DECLARE @Sum Decimal(1, 0)
SET     @Sum = 0

INSERT INTO [Issue4620Table]
(
	[Id],
	[IdContract],
	[IdClient],
	[Sum]
)
VALUES
(
	@Id,
	@IdContract,
	@IdClient,
	@Sum
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @IdContract Int -- Int32
SET     @IdContract = 2
DECLARE @IdClient Int -- Int32
SET     @IdClient = NULL
DECLARE @Sum Decimal(1, 0)
SET     @Sum = 0

INSERT INTO [Issue4620Table]
(
	[Id],
	[IdContract],
	[IdClient],
	[Sum]
)
VALUES
(
	@Id,
	@IdContract,
	@IdClient,
	@Sum
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 3
DECLARE @IdContract Int -- Int32
SET     @IdContract = NULL
DECLARE @IdClient Int -- Int32
SET     @IdClient = NULL
DECLARE @Sum Decimal(1, 0)
SET     @Sum = 0

INSERT INTO [Issue4620Table]
(
	[Id],
	[IdContract],
	[IdClient],
	[Sum]
)
VALUES
(
	@Id,
	@IdContract,
	@IdClient,
	@Sum
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 4
DECLARE @IdContract Int -- Int32
SET     @IdContract = 2
DECLARE @IdClient Int -- Int32
SET     @IdClient = 1
DECLARE @Sum Decimal(1, 0)
SET     @Sum = 0

INSERT INTO [Issue4620Table]
(
	[Id],
	[IdContract],
	[IdClient],
	[Sum]
)
VALUES
(
	@Id,
	@IdContract,
	@IdClient,
	@Sum
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4620Client]', N'U') IS NOT NULL)
	DROP TABLE [Issue4620Client]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4620Client]', N'U') IS NULL)
	CREATE TABLE [Issue4620Client]
	(
		[Id]   Int            NOT NULL,
		[Name] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Client 1'

INSERT INTO [Issue4620Client]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @Name NVarChar(4000) -- String
SET     @Name = N'Client 2'

INSERT INTO [Issue4620Client]
(
	[Id],
	[Name]
)
VALUES
(
	@Id,
	@Name
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4620Contract]', N'U') IS NOT NULL)
	DROP TABLE [Issue4620Contract]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4620Contract]', N'U') IS NULL)
	CREATE TABLE [Issue4620Contract]
	(
		[Id]       Int NOT NULL,
		[IdClient] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @IdClient Int -- Int32
SET     @IdClient = 1

INSERT INTO [Issue4620Contract]
(
	[Id],
	[IdClient]
)
VALUES
(
	@Id,
	@IdClient
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008
DECLARE @Id Int -- Int32
SET     @Id = 2
DECLARE @IdClient Int -- Int32
SET     @IdClient = 2

INSERT INTO [Issue4620Contract]
(
	[Id],
	[IdClient]
)
VALUES
(
	@Id,
	@IdClient
)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	(
		SELECT
			[b].[Id],
			[a_Client].[Name]
		FROM
			[Issue4620Table] [b]
				INNER JOIN [Issue4620Client] [a_Client] ON [b].[IdClient] = [a_Client].[Id]
		WHERE
			[b].[IdClient] IS NOT NULL
		UNION ALL
		SELECT
			[b_1].[Id],
			[a_Client_1].[Name]
		FROM
			[Issue4620Table] [b_1]
				INNER JOIN [Issue4620Contract] [a_Contract] ON [b_1].[IdContract] = [a_Contract].[Id]
				INNER JOIN [Issue4620Client] [a_Client_1] ON [a_Contract].[IdClient] = [a_Client_1].[Id]
		WHERE
			[b_1].[IdContract] IS NOT NULL
	) [t1]
ORDER BY
	[t1].[Id],
	[t1].[Name]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4620Contract]', N'U') IS NOT NULL)
	DROP TABLE [Issue4620Contract]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4620Client]', N'U') IS NOT NULL)
	DROP TABLE [Issue4620Client]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[Issue4620Table]', N'U') IS NOT NULL)
	DROP TABLE [Issue4620Table]

