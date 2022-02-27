﻿BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE IF EXISTS [CreateIfNotExistsTable]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [#CreateIfNotExistsTable]
(
	[Id]    Int NOT NULL,
	[Value] Int NOT NULL
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

SELECT
	[t1].[Id],
	[t1].[Value]
FROM
	[#CreateIfNotExistsTable] [t1]

BeforeExecute
-- SqlServer.2019 SqlServer.2017

IF (OBJECT_ID(N'[CreateIfNotExistsTable]', N'U') IS NULL)
	CREATE TABLE [CreateIfNotExistsTable]
	(
		[Id]    Int NOT NULL,
		[Value] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE IF EXISTS [#CreateIfNotExistsTable]

