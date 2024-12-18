BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Isue2424Table]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[Isue2424Table]', N'U') IS NULL)
	CREATE TABLE [Isue2424Table]
	(
		[Id]       Int            NOT NULL,
		[StrValue] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

INSERT INTO [Isue2424Table]
(
	[Id],
	[StrValue]
)
VALUES
(1,N'1'),
(3,N'3'),
(5,N'5')

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] >= N'4' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] >= N'4' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] <= N'2' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] <= N'2' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] > N'3' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] > N'3' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] < N'3' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] < N'3' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] = N'3' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] = N'3' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] <= N'2' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] <= N'2' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] >= N'4' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] >= N'4' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] < N'3' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] < N'3' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] > N'3' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] > N'3' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] >= N'5' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] >= N'5' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] <= N'1' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	[i].[StrValue] <= N'1' AND [i].[StrValue] IS NOT NULL

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [Isue2424Table]

