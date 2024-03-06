BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[odata_person]', N'U') IS NOT NULL)
	DROP TABLE [odata_person]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[odata_person]', N'U') IS NULL)
	CREATE TABLE [odata_person]
	(
		[Name]            NVarChar(50)   NOT NULL,
		[YearsExperience] Int            NOT NULL,
		[Title]           NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_odata_person] PRIMARY KEY CLUSTERED ([Name])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

INSERT INTO [odata_person]
(
	[Name],
	[YearsExperience],
	[Title]
)
VALUES
(N'N1',3,N'Engineer'),
(N'N2',4,N'Engineer')

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	[$it_2].[Name],
	[$it_2].[Value_1],
	[$it_2].[Count_1]
FROM
	(
		SELECT
			Count(*) as [Count_1],
			[$it_1].[c1] as [Name],
			[$it_1].[Title] as [Value_1]
		FROM
			(
				SELECT
					N'Title' as [c1],
					[$it].[Title]
				FROM
					[odata_person] [$it]
			) [$it_1]
		GROUP BY
			[$it_1].[c1],
			[$it_1].[Title]
	) [$it_2]
ORDER BY
	[$it_2].[Count_1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[odata_person]', N'U') IS NOT NULL)
	DROP TABLE [odata_person]

