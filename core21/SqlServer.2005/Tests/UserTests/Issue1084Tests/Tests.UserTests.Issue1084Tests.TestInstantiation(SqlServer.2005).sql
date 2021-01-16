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

IF (OBJECT_ID(N'[i1084_student]', N'U') IS NOT NULL)
	DROP TABLE [i1084_student]

BeforeExecute
-- SqlServer.2005

IF (OBJECT_ID(N'[i1084_person]', N'U') IS NOT NULL)
	DROP TABLE [i1084_person]

