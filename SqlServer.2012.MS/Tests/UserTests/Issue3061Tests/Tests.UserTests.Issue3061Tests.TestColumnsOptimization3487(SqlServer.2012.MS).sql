BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Root]', N'U') IS NOT NULL)
	DROP TABLE [Root]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Root]', N'U') IS NULL)
	CREATE TABLE [Root]
	(
		[Id] Int NOT NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Draft1]', N'U') IS NOT NULL)
	DROP TABLE [Draft1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Draft1]', N'U') IS NULL)
	CREATE TABLE [Draft1]
	(
		[RootId] Int            NOT NULL,
		[Html]   NVarChar(4000)     NULL,
		[Plain]  NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Draft2]', N'U') IS NOT NULL)
	DROP TABLE [Draft2]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Draft2]', N'U') IS NULL)
	CREATE TABLE [Draft2]
	(
		[RootId] Int            NOT NULL,
		[Html]   NVarChar(4000)     NULL,
		[Plain]  NVarChar(4000)     NULL
	)

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	[t1].[cond],
	[t1].[Html],
	[t1].[Plain],
	[t2].[cond],
	[t2].[Html],
	[t2].[Plain]
FROM
	[Root] [x]
		OUTER APPLY (
			SELECT TOP (1)
				[a_SomeDrafts].[Html],
				[a_SomeDrafts].[Plain],
				1 as [cond]
			FROM
				[Draft1] [a_SomeDrafts]
			WHERE
				[x].[Id] = [a_SomeDrafts].[RootId]
		) [t1]
		OUTER APPLY (
			SELECT TOP (1)
				[a_OtherDrafts].[Html],
				[a_OtherDrafts].[Plain],
				1 as [cond]
			FROM
				[Draft2] [a_OtherDrafts]
			WHERE
				[x].[Id] = [a_OtherDrafts].[RootId]
		) [t2]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Draft2]', N'U') IS NOT NULL)
	DROP TABLE [Draft2]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Draft1]', N'U') IS NOT NULL)
	DROP TABLE [Draft1]

BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

IF (OBJECT_ID(N'[Root]', N'U') IS NOT NULL)
	DROP TABLE [Root]

