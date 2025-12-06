-- SqlServer.2016

DROP TABLE IF EXISTS [TransactionScopeTable]

-- SqlServer.2016

CREATE TABLE [TransactionScopeTable]
(
	[Id] Int NOT NULL
)

-- SqlServer.2016

INSERT INTO [TransactionScopeTable]
(
	[Id]
)
VALUES
(
	1
)

-- SqlServer.2016

INSERT INTO [TransactionScopeTable]
(
	[Id]
)
VALUES
(
	2
)

-- SqlServer.2016

INSERT INTO [TransactionScopeTable]
(
	[Id]
)
VALUES
(
	3
)

-- SqlServer.2016

SELECT
	[t1].[Id]
FROM
	[TransactionScopeTable] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2016

DROP TABLE IF EXISTS [TransactionScopeTable]

