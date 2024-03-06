﻿BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Table1]', N'U') IS NOT NULL)
	DROP TABLE [Table1]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Table1]', N'U') IS NULL)
	CREATE TABLE [Table1]
	(
		[Field1] BigInt NOT NULL,
		[Field2] BigInt NOT NULL,
		[Field3] Int        NULL
	)

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Table2]', N'U') IS NOT NULL)
	DROP TABLE [Table2]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Table2]', N'U') IS NULL)
	CREATE TABLE [Table2]
	(
		[Field2] BigInt NOT NULL,
		[Field4] Int    NOT NULL
	)

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Table3]', N'U') IS NOT NULL)
	DROP TABLE [Table3]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Table3]', N'U') IS NULL)
	CREATE TABLE [Table3]
	(
		[Field4] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Table4]', N'U') IS NOT NULL)
	DROP TABLE [Table4]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Table4]', N'U') IS NULL)
	CREATE TABLE [Table4]
	(
		[Field3] Int NOT NULL,
		[Field4] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Table5]', N'U') IS NOT NULL)
	DROP TABLE [Table5]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Table5]', N'U') IS NULL)
	CREATE TABLE [Table5]
	(
		[Field5]             Int     NULL,
		[ProblematicalField] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2012

SELECT
	[t11].[Field1]
FROM
	[Table5] [t1]
		LEFT JOIN [Table5] [a_Table5Ref] ON ([t1].[Field5] = [a_Table5Ref].[ProblematicalField] OR [t1].[Field5] IS NULL AND [a_Table5Ref].[ProblematicalField] IS NULL)
		INNER JOIN [Table4] [t2] ON [t1].[ProblematicalField] = [t2].[Field4]
		INNER JOIN [Table1] [a_Table1s] ON [t2].[Field3] = [a_Table1s].[Field3]
		LEFT JOIN [Table4] [a_Table4Ref] ON ([a_Table1s].[Field3] = [a_Table4Ref].[Field3] OR [a_Table1s].[Field3] IS NULL AND [a_Table4Ref].[Field3] IS NULL)
		INNER JOIN [Table5] [a_Table5Ref_1] ON [a_Table4Ref].[Field4] = [a_Table5Ref_1].[ProblematicalField]
		LEFT JOIN [Table5] [a_Table5Ref_2] ON ([a_Table5Ref_1].[Field5] = [a_Table5Ref_2].[ProblematicalField] OR [a_Table5Ref_1].[Field5] IS NULL AND [a_Table5Ref_2].[ProblematicalField] IS NULL)
		INNER JOIN [Table4] [t4] ON [a_Table5Ref_2].[ProblematicalField] IS NOT NULL AND [a_Table5Ref_2].[ProblematicalField] = [t4].[Field4]
		INNER JOIN [Table1] [t6] ON [t4].[Field3] = [t6].[Field3]
		INNER JOIN [Table4] [t7] ON [a_Table5Ref].[ProblematicalField] IS NOT NULL AND [a_Table5Ref].[ProblematicalField] = [t7].[Field4]
		INNER JOIN [Table1] [a_Table1s_1] ON [t7].[Field3] = [a_Table1s_1].[Field3]
		INNER JOIN [Table2] [a_Table2Ref] ON [a_Table1s_1].[Field2] = [a_Table2Ref].[Field2]
		INNER JOIN [Table3] [a_Table3Ref] ON [a_Table2Ref].[Field4] = [a_Table3Ref].[Field4]
		INNER JOIN [Table2] [t9] ON [a_Table3Ref].[Field4] = [t9].[Field4]
		INNER JOIN [Table1] [t11] ON [t9].[Field2] = [t11].[Field2]
WHERE
	[t6].[Field1] = [t11].[Field1]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Table5]', N'U') IS NOT NULL)
	DROP TABLE [Table5]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Table4]', N'U') IS NOT NULL)
	DROP TABLE [Table4]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Table3]', N'U') IS NOT NULL)
	DROP TABLE [Table3]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Table2]', N'U') IS NOT NULL)
	DROP TABLE [Table2]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[Table1]', N'U') IS NOT NULL)
	DROP TABLE [Table1]

