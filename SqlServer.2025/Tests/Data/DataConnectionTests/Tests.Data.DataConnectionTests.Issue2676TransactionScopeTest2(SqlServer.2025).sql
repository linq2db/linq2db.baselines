﻿BeforeExecute
-- SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [TransactionScopeTable]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

CREATE TABLE [TransactionScopeTable]
(
	[Id] Int NOT NULL
)

BeforeExecute
-- SqlServer.2025 SqlServer.2022

INSERT INTO [TransactionScopeTable]
(
	[Id]
)
VALUES
(
	2
)

BeforeExecute
-- SqlServer.2025 SqlServer.2022

INSERT INTO [TransactionScopeTable]
(
	[Id]
)
VALUES
(
	3
)

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id]
FROM
	[TransactionScopeTable] [t1]
ORDER BY
	[t1].[Id]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [TransactionScopeTable]

