﻿BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [TABLE1]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[TABLE1]', N'U') IS NULL)
	CREATE TABLE [TABLE1]
	(
		[ID1]   Int            NOT NULL,
		[NAME1] NVarChar(4000)     NULL,

		CONSTRAINT [PK_TABLE1] PRIMARY KEY CLUSTERED ([ID1])
	)

BeforeExecute
-- SqlServer.2019

INSERT INTO [TABLE1]
(
	[ID1],
	[NAME1]
)
VALUES
(1,N'Some1'),
(2,N'Some2')

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [TABLE2]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[TABLE2]', N'U') IS NULL)
	CREATE TABLE [TABLE2]
	(
		[ID2]       Int            NOT NULL,
		[PARENTID2] Int            NOT NULL,
		[NAME2]     NVarChar(4000)     NULL,

		CONSTRAINT [PK_TABLE2] PRIMARY KEY CLUSTERED ([ID2])
	)

BeforeExecute
-- SqlServer.2019

INSERT INTO [TABLE2]
(
	[ID2],
	[PARENTID2],
	[NAME2]
)
VALUES
(11,1,N'Child11'),
(12,1,N'Child12'),
(13,2,N'Child13')

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [TABLE3]

BeforeExecute
-- SqlServer.2019

IF (OBJECT_ID(N'[TABLE3]', N'U') IS NULL)
	CREATE TABLE [TABLE3]
	(
		[ID3]       Int            NOT NULL,
		[PARENTID3] Int            NOT NULL,
		[NAME3]     NVarChar(4000)     NULL,

		CONSTRAINT [PK_TABLE3] PRIMARY KEY CLUSTERED ([ID3])
	)

BeforeExecute
-- SqlServer.2019

INSERT INTO [TABLE3]
(
	[ID3],
	[PARENTID3],
	[NAME3]
)
VALUES
(21,11,N'Child21'),
(22,11,N'Child22'),
(23,12,N'Child23')

BeforeExecute
-- SqlServer.2019

SELECT
	[t2].[ID3],
	[t2].[NAME3],
	[t2].[NAME2],
	[t1_1].[NAME1]
FROM
	[TABLE1] [t1_1]
		OUTER APPLY (
			SELECT TOP (1)
				[t1].[ID3],
				[t1].[NAME3],
				[x_1].[NAME2]
			FROM
				[TABLE2] [x_1]
					OUTER APPLY (
						SELECT TOP (1)
							[x].[ID3],
							[x].[NAME3]
						FROM
							[TABLE3] [x]
						WHERE
							[x].[PARENTID3] = [x_1].[ID2]
					) [t1]
			WHERE
				[x_1].[PARENTID2] = [t1_1].[ID1]
		) [t2]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [TABLE3]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [TABLE2]

BeforeExecute
-- SqlServer.2019

DROP TABLE IF EXISTS [TABLE1]

