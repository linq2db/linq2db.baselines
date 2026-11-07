-- SqlServer.CS SqlServer.2025
DROP TABLE IF EXISTS [TransactionScopeTable]

-- SqlServer.CS SqlServer.2025
CREATE TABLE [TransactionScopeTable]
(
	[Id] Int NOT NULL
)

-- SqlServer.CS SqlServer.2025
INSERT INTO [TransactionScopeTable]
(
	[Id]
)
VALUES
(
	1
)

-- SqlServer.CS SqlServer.2025
INSERT INTO [TransactionScopeTable]
(
	[Id]
)
VALUES
(
	2
)

-- SqlServer.CS SqlServer.2025
INSERT INTO [TransactionScopeTable]
(
	[Id]
)
VALUES
(
	3
)

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[Id]
FROM
	[TransactionScopeTable] [t1]
ORDER BY
	[t1].[Id]

-- SqlServer.CS SqlServer.2025
DROP TABLE IF EXISTS [TransactionScopeTable]

