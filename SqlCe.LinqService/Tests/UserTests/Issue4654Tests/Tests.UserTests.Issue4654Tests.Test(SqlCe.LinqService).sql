BeforeExecute
-- SqlCe

DROP TABLE [Issue4654Customer]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue4654Customer]
(
	[Id]   Int            NOT NULL IDENTITY,
	[Name] NVarChar(255)      NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [Issue4654Order]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue4654Order]
(
	[Id]          Int            NOT NULL IDENTITY,
	[ProductName] NVarChar(255)      NULL,
	[Quantity]    Int            NOT NULL,
	[CustomerId]  Int            NOT NULL
)

BeforeExecute
-- SqlCe

DROP TABLE [Issue4654Product]

BeforeExecute
-- SqlCe

CREATE TABLE [Issue4654Product]
(
	[Id]    Int            NOT NULL IDENTITY,
	[Name]  NVarChar(255)      NULL,
	[Price] Decimal        NOT NULL
)

BeforeExecute
-- SqlCe

SELECT
	CAST([c_1].[Id] AS NVarChar(11)) as [Id],
	[c_1].[Name]
FROM
	[Issue4654Customer] [c_1]
UNION
SELECT
	CAST([o].[Id] AS NVarChar(11)) as [Id],
	[o].[ProductName] as [Name]
FROM
	[Issue4654Order] [o]
UNION
SELECT
	CAST([p].[Id] AS NVarChar(11)) as [Id],
	[p].[Name]
FROM
	[Issue4654Product] [p]

BeforeExecute
-- SqlCe

DROP TABLE [Issue4654Product]

BeforeExecute
-- SqlCe

DROP TABLE [Issue4654Order]

BeforeExecute
-- SqlCe

DROP TABLE [Issue4654Customer]

