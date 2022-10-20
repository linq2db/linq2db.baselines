BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [TransactionScopeTable]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

CREATE TABLE [TransactionScopeTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

INSERT INTO [TransactionScopeTable]
(
	[Id]
)
VALUES
(
	2
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

INSERT INTO [TransactionScopeTable]
(
	[Id]
)
VALUES
(
	3
)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[_].[Id]
FROM
	[TransactionScopeTable] [_]
ORDER BY
	[_].[Id]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [TransactionScopeTable]

