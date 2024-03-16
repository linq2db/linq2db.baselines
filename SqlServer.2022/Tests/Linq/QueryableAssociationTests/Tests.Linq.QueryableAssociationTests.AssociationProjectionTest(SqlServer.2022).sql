﻿BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [SomeEntity]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[SomeEntity]', N'U') IS NULL)
	CREATE TABLE [SomeEntity]
	(
		[Id]       Int            NOT NULL,
		[OwnerStr] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2022

INSERT INTO [SomeEntity]
(
	[Id],
	[OwnerStr]
)
VALUES
(1,N'Own_1'),
(2,N'Own_2'),
(3,N'Own_3'),
(4,N'Own_4'),
(5,N'Own_5'),
(6,N'Own_6'),
(7,N'Own_7'),
(8,N'Own_8'),
(9,N'Own_9'),
(10,N'Own_10')

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [SomeOtherEntity]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[SomeOtherEntity]', N'U') IS NULL)
	CREATE TABLE [SomeOtherEntity]
	(
		[Id]       Int            NOT NULL,
		[StrValue] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2022

INSERT INTO [SomeOtherEntity]
(
	[Id],
	[StrValue]
)
VALUES
(1,N'Str_1'),
(2,N'Str_2'),
(3,N'Str_3'),
(4,N'Str_4'),
(5,N'Str_5'),
(6,N'Str_6'),
(7,N'Str_7'),
(8,N'Str_8'),
(9,N'Str_9'),
(10,N'Str_10')

BeforeExecute
-- SqlServer.2022

SELECT
	[t1].[StrValue] + N'_B',
	[t1].[StrValue_1] + N'_C',
	[t1].[Id],
	[t1].[StrValue]
FROM
	[SomeEntity] [e]
		OUTER APPLY (
			SELECT TOP (1)
				[a_Other].[StrValue] + N'_A' as [StrValue],
				[a_Other].[StrValue] + N'_A' as [StrValue_1],
				[a_Other].[Id]
			FROM
				[SomeOtherEntity] [a_Other]
			WHERE
				[a_Other].[Id] = [e].[Id]
		) [t1]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [SomeOtherEntity]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [SomeEntity]

