BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[i1084_person]', N'U') IS NOT NULL)
	DROP TABLE [i1084_person]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[i1084_person]', N'U') IS NULL)
	CREATE TABLE [i1084_person]
	(
		[Id]            Int NOT NULL,
		[Number]        Int NOT NULL,
		[StatusBitmask] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [i1084_person]
(
	[Id],
	[Number],
	[StatusBitmask]
)
SELECT 1,1,0 UNION ALL
SELECT 2,2,0

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[i1084_student]', N'U') IS NOT NULL)
	DROP TABLE [i1084_student]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[i1084_student]', N'U') IS NULL)
	CREATE TABLE [i1084_student]
	(
		[Id]            Int            NOT NULL,
		[Number]        NVarChar(4000)     NULL,
		[StatusBitmask] Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2005

INSERT INTO [i1084_student]
(
	[Id],
	[Number],
	[StatusBitmask]
)
SELECT 1,N'1',0 UNION ALL
SELECT 2,N'2',0

BeforeExecute
-- SqlServer.2005

SELECT
	[k_1].[Id],
	[k_1].[Number],
	[k_1].[StatusBitmask],
	CASE
		WHEN ([k_1].[StatusBitmask] & 128) <> 0 THEN 1
		ELSE 0
	END,
	CASE
		WHEN ([g_1].[StatusBitmask] & 128) <> 0 OR [g_1].[StatusBitmask] IS NULL
			THEN 1
		ELSE 0
	END
FROM
	[i1084_person] [k_1]
		LEFT JOIN [i1084_student] [g_1] ON [k_1].[Id] = [g_1].[Id] AND CAST([k_1].[Number] AS NVarChar(11)) = [g_1].[Number]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[i1084_student]', N'U') IS NOT NULL)
	DROP TABLE [i1084_student]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[i1084_person]', N'U') IS NOT NULL)
	DROP TABLE [i1084_person]

