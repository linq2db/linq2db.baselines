BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [TABLE1]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[TABLE1]', N'U') IS NULL)
	CREATE TABLE [TABLE1]
	(
		[ID1]   Int            NOT NULL,
		[NAME1] NVarChar(4000)     NULL,

		CONSTRAINT [PK_TABLE1] PRIMARY KEY CLUSTERED ([ID1])
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

INSERT INTO [TABLE1]
(
	[ID1],
	[NAME1]
)
VALUES
(1,N'Some1'),
(2,NULL)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [TABLE2]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[TABLE2]', N'U') IS NULL)
	CREATE TABLE [TABLE2]
	(
		[ID2]       Int            NOT NULL,
		[PARENTID2] Int                NULL,
		[NAME2]     NVarChar(4000)     NULL,

		CONSTRAINT [PK_TABLE2] PRIMARY KEY CLUSTERED ([ID2])
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

INSERT INTO [TABLE2]
(
	[ID2],
	[PARENTID2],
	[NAME2]
)
VALUES
(11,1,N'Child11'),
(12,2,N'Child12'),
(13,NULL,N'Child13'),
(14,1,NULL),
(15,2,NULL),
(16,NULL,NULL)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [TABLE3]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

IF (OBJECT_ID(N'[TABLE3]', N'U') IS NULL)
	CREATE TABLE [TABLE3]
	(
		[ID3]       Int            NOT NULL,
		[PARENTID3] Int                NULL,
		[NAME3]     NVarChar(4000)     NULL,

		CONSTRAINT [PK_TABLE3] PRIMARY KEY CLUSTERED ([ID3])
	)

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

INSERT INTO [TABLE3]
(
	[ID3],
	[PARENTID3],
	[NAME3]
)
VALUES
(21,11,N'Child21'),
(22,12,N'Child22'),
(23,13,N'Child23'),
(24,14,N'Child24'),
(25,15,N'Child25'),
(26,16,N'Child26'),
(27,NULL,N'Child27')

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t3].[NAME3],
	[t2].[Id2],
	[t2].[Id1],
	[t2].[Name1],
	[t2].[Name2]
FROM
	[TABLE3] [t3]
		OUTER APPLY (
			SELECT TOP (1)
				[t1].[Name1],
				[t1].[Id1],
				[x_1].[NAME2] as [Name2],
				[x_1].[ID2] as [Id2]
			FROM
				[TABLE2] [x_1]
					OUTER APPLY (
						SELECT TOP (1)
							[x].[NAME1] as [Name1],
							[x].[ID1] as [Id1]
						FROM
							[TABLE1] [x]
						WHERE
							[x].[ID1] = [x_1].[PARENTID2]
					) [t1]
			WHERE
				[x_1].[ID2] = [t3].[PARENTID3]
		) [t2]
ORDER BY
	[t3].[ID3]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[ID3],
	[t1].[PARENTID3],
	[t1].[NAME3]
FROM
	[TABLE3] [t1]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[ID2],
	[t1].[PARENTID2],
	[t1].[NAME2]
FROM
	[TABLE2] [t1]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	[t1].[ID1],
	[t1].[NAME1]
FROM
	[TABLE1] [t1]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [TABLE3]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [TABLE2]

BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

DROP TABLE IF EXISTS [TABLE1]

