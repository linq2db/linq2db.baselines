﻿BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

CREATE TABLE [Issue3323Table]
(
	[Id]       Int            NOT NULL,
	[FistName] NVarChar(4000)     NULL,
	[LastName] NVarChar(4000)     NULL,
	[Text]     NVarChar(4000) NOT NULL,

	CONSTRAINT [PK_Issue3323Table] PRIMARY KEY CLUSTERED ([Id])
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

INSERT INTO [Issue3323Table]
(
	[Id],
	[FistName],
	[LastName],
	[Text]
)
VALUES
(
	1,
	N'one',
	N'two',
	N'text'
)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[r].[Id],
	[r].[FistName] + N' ' + [r].[LastName]
FROM
	[Issue3323Table] [r]
UNION ALL
SELECT
	[r_1].[Id] + 1,
	[r_1].[Text]
FROM
	[Issue3323Table] [r_1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT
	[r].[Id] + 1,
	[r].[Text]
FROM
	[Issue3323Table] [r]
UNION ALL
SELECT
	[r_1].[Id],
	[r_1].[FistName] + N' ' + [r_1].[LastName]
FROM
	[Issue3323Table] [r_1]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Issue3323Table]

