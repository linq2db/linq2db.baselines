﻿BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [i1084_person]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[i1084_person]', N'U') IS NULL)
	CREATE TABLE [i1084_person]
	(
		[Id]            Int NOT NULL,
		[Number]        Int NOT NULL,
		[StatusBitmask] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [i1084_student]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

IF (OBJECT_ID(N'[i1084_student]', N'U') IS NULL)
	CREATE TABLE [i1084_student]
	(
		[Id]            Int            NOT NULL,
		[Number]        NVarChar(4000)     NULL,
		[StatusBitmask] Int            NOT NULL
	)

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	[k_1].[StatusBitmask],
	[joinedTable].[StatusBitmask]
FROM
	[i1084_person] [k_1]
		LEFT JOIN [i1084_student] [joinedTable] ON [k_1].[Id] = [joinedTable].[Id] AND Convert(NVarChar(11), [k_1].[Number]) = [joinedTable].[Number]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [i1084_student]

BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

DROP TABLE IF EXISTS [i1084_person]

