BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Isue2424Table]

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

IF (OBJECT_ID(N'[Isue2424Table]', N'U') IS NULL)
	CREATE TABLE [Isue2424Table]
	(
		[Id]       Int            NOT NULL,
		[StrValue] NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

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
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 <= IIF([i].[StrValue] > N'4', 1, IIF(([i].[StrValue] = N'4'), 0, -1))

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	IIF([i].[StrValue] > N'4', 1, IIF(([i].[StrValue] = N'4'), 0, -1)) >= 0

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 >= IIF([i].[StrValue] > N'2', 1, IIF(([i].[StrValue] = N'2'), 0, -1))

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	IIF([i].[StrValue] > N'2', 1, IIF(([i].[StrValue] = N'2'), 0, -1)) <= 0

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 < IIF([i].[StrValue] > N'3', 1, IIF(([i].[StrValue] = N'3'), 0, -1))

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	IIF([i].[StrValue] > N'3', 1, IIF(([i].[StrValue] = N'3'), 0, -1)) > 0

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 > IIF([i].[StrValue] > N'3', 1, IIF(([i].[StrValue] = N'3'), 0, -1))

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	IIF([i].[StrValue] > N'3', 1, IIF(([i].[StrValue] = N'3'), 0, -1)) < 0

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 = IIF([i].[StrValue] > N'3', 1, IIF(([i].[StrValue] = N'3'), 0, -1))

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	IIF([i].[StrValue] > N'3', 1, IIF(([i].[StrValue] = N'3'), 0, -1)) = 0

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 >= IIF([i].[StrValue] > N'2', 1, IIF(([i].[StrValue] = N'2'), 0, -1))

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	IIF([i].[StrValue] > N'2', 1, IIF(([i].[StrValue] = N'2'), 0, -1)) <= 0

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 <= IIF([i].[StrValue] > N'4', 1, IIF(([i].[StrValue] = N'4'), 0, -1))

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	IIF([i].[StrValue] > N'4', 1, IIF(([i].[StrValue] = N'4'), 0, -1)) >= 0

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 > IIF([i].[StrValue] > N'3', 1, IIF(([i].[StrValue] = N'3'), 0, -1))

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	IIF([i].[StrValue] > N'3', 1, IIF(([i].[StrValue] = N'3'), 0, -1)) < 0

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 < IIF([i].[StrValue] > N'3', 1, IIF(([i].[StrValue] = N'3'), 0, -1))

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	IIF([i].[StrValue] > N'3', 1, IIF(([i].[StrValue] = N'3'), 0, -1)) > 0

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 <= IIF([i].[StrValue] > N'5', 1, IIF(([i].[StrValue] = N'5'), 0, -1))

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	IIF([i].[StrValue] > N'5', 1, IIF(([i].[StrValue] = N'5'), 0, -1)) >= 0

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	0 >= IIF([i].[StrValue] > N'1', 1, IIF(([i].[StrValue] = N'1'), 0, -1))

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

SELECT TOP (2)
	[i].[Id],
	[i].[StrValue]
FROM
	[Isue2424Table] [i]
WHERE
	IIF([i].[StrValue] > N'1', 1, IIF(([i].[StrValue] = N'1'), 0, -1)) <= 0

BeforeExecute
-- SqlServer.2019.MS SqlServer.2019

DROP TABLE IF EXISTS [Isue2424Table]

