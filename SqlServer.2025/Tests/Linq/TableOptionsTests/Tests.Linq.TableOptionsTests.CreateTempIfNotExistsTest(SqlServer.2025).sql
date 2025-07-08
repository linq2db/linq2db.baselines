BeforeExecute
-- SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [CreateIfNotExistsTable]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

CREATE TABLE [tempdb]..[#CreateIfNotExistsTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2025 SqlServer.2022

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[tempdb]..[#CreateIfNotExistsTable] [t1]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

IF (OBJECT_ID(N'[CreateIfNotExistsTable]', N'U') IS NULL)
	CREATE TABLE [CreateIfNotExistsTable]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [CreateIfNotExistsTable]

BeforeExecute
-- SqlServer.2025 SqlServer.2022

DROP TABLE IF EXISTS [tempdb]..[#CreateIfNotExistsTable]

