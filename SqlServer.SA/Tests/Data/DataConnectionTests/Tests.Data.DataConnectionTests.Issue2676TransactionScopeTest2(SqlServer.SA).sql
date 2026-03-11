-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [TransactionScopeTable]

-- SqlServer.SA SqlServer.2019

CREATE TABLE [TransactionScopeTable]
(
	[Id] Int NOT NULL
)

-- SqlServer.SA SqlServer.2019

INSERT INTO [TransactionScopeTable]
(
	[Id]
)
VALUES
(
	2
)

-- SqlServer.SA SqlServer.2019

INSERT INTO [TransactionScopeTable]
(
	[Id]
)
VALUES
(
	3
)

-- SqlServer.SA SqlServer.2019

SELECT
	[t1].[Id]
FROM
	[TransactionScopeTable] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [TransactionScopeTable]

