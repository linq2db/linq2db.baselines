BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [TransactionScopeTable]

BeforeExecute
-- SqlServer.2019

CREATE TABLE [TransactionScopeTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlServer.2019

INSERT INTO [TransactionScopeTable]
(
	[Id]
)
VALUES
(
	1
)

BeforeExecute
-- SqlServer.2019

INSERT INTO [TransactionScopeTable]
(
	[Id]
)
VALUES
(
	2
)

BeforeExecute
-- SqlServer.2019

INSERT INTO [TransactionScopeTable]
(
	[Id]
)
VALUES
(
	3
)

BeforeExecute
-- SqlServer.2019

SELECT
	[t1].[Id]
FROM
	[TransactionScopeTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [TransactionScopeTable]

