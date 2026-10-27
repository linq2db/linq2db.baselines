-- SqlServer.CS SqlServer.2025
DROP TABLE IF EXISTS [CreateIfNotExistsTable]

-- SqlServer.CS SqlServer.2025
IF (OBJECT_ID(N'[CreateIfNotExistsTable]', N'U') IS NULL)
	CREATE TABLE [CreateIfNotExistsTable]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

-- SqlServer.CS SqlServer.2025
INSERT INTO [CreateIfNotExistsTable]
(
	[Id],
	[Value]
)
VALUES
(
	1,
	2
)

-- SqlServer.CS SqlServer.2025
SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[CreateIfNotExistsTable] [t1]

-- SqlServer.CS SqlServer.2025
IF (OBJECT_ID(N'[CreateIfNotExistsTable]', N'U') IS NULL)
	CREATE TABLE [CreateIfNotExistsTable]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

-- SqlServer.CS SqlServer.2025
DROP TABLE IF EXISTS [CreateIfNotExistsTable]

-- SqlServer.CS SqlServer.2025
DROP TABLE IF EXISTS [CreateIfNotExistsTable]

