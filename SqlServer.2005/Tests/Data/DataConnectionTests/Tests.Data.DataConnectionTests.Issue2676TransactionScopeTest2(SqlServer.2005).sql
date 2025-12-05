-- SqlServer.2005

IF (OBJECT_ID(N'[TransactionScopeTable]', N'U') IS NOT NULL)
	DROP TABLE [TransactionScopeTable]

-- SqlServer.2005

CREATE TABLE [TransactionScopeTable]
(
	[Id] Int NOT NULL
)

-- SqlServer.2005

INSERT INTO [TransactionScopeTable]
(
	[Id]
)
VALUES
(
	2
)

-- SqlServer.2005

INSERT INTO [TransactionScopeTable]
(
	[Id]
)
VALUES
(
	3
)

-- SqlServer.2005

SELECT
	[t1].[Id]
FROM
	[TransactionScopeTable] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2005

IF (OBJECT_ID(N'[TransactionScopeTable]', N'U') IS NOT NULL)
	DROP TABLE [TransactionScopeTable]

