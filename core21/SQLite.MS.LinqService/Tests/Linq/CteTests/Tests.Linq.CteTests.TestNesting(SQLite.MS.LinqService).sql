BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [NestingA]
(
	[Property1] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [NestingB]
(
	[Property1] NVarChar(255)     NULL,
	[Property2] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [NestingC]
(
	[Property1] NVarChar(255)     NULL,
	[Property2] NVarChar(255)     NULL,
	[Property3] NVarChar(255)     NULL
)

BeforeExecute
-- SQLite.MS SQLite

WITH [CTE_1] ([Property2])
AS
(
	SELECT
		[a].[Property2]
	FROM
		[NestingC] [a]
)
SELECT
	[c2].[Property1],
	[t_1].[Property2],
	[t_1].[Property3]
FROM
	(
		SELECT
			[c1].[Property2] as [Property1]
		FROM
			[CTE_1] [c1],
			[NestingC] [t]
	) [c2],
	[NestingC] [t_1]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [NestingC]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [NestingB]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [NestingA]

