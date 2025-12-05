-- SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [TransactionScopeTable]

-- SqlServer.2025 SqlServer.2022

CREATE TABLE [TransactionScopeTable]
(
	[Id] Int NOT NULL
)

-- SqlServer.2025 SqlServer.2022

INSERT INTO [TransactionScopeTable]
(
	[Id]
)
VALUES
(
	2
)

-- SqlServer.2025 SqlServer.2022

INSERT INTO [TransactionScopeTable]
(
	[Id]
)
VALUES
(
	3
)

-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id]
FROM
	[TransactionScopeTable] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [TransactionScopeTable]

