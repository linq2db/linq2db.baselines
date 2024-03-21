﻿BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [i1084_person]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[i1084_person]', N'U') IS NULL)
	CREATE TABLE [i1084_person]
	(
		[Id]            Int NOT NULL,
		[Number]        Int NOT NULL,
		[StatusBitmask] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [i1084_student]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[i1084_student]', N'U') IS NULL)
	CREATE TABLE [i1084_student]
	(
		[Id]            Int            NOT NULL,
		[Number]        NVarChar(4000)     NULL,
		[StatusBitmask] Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2016

SELECT
	[t1].[StatusBitmask] & 128,
	[g_1].[StatusBitmask] & 128
FROM
	[i1084_person] [t1]
		LEFT JOIN [i1084_student] [g_1] ON [t1].[Id] = [g_1].[Id] AND Convert(NVarChar(11), [t1].[Number]) = [g_1].[Number]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [i1084_student]

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [i1084_person]

