BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [odata_person]

BeforeExecute
-- SqlServer.SA SqlServer.2019

IF (OBJECT_ID(N'[odata_person]', N'U') IS NULL)
	CREATE TABLE [odata_person]
	(
		[Name]            NVarChar(50)   NOT NULL,
		[YearsExperience] Int            NOT NULL,
		[Title]           NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_odata_person] PRIMARY KEY CLUSTERED ([Name])
	)

BeforeExecute
-- SqlServer.SA SqlServer.2019

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
-- SqlServer.SA SqlServer.2019

SELECT
	[it_2].[Name],
	[it_2].[Value_1],
	[it_2].[SUM_1]
FROM
	(
		SELECT
			SUM([it_1].[Value_2]) as [SUM_1],
			[it_1].[Name],
			[it_1].[Value_1]
		FROM
			(
				SELECT
					N'Title' as [Name],
					[it].[Title] as [Value_1],
					[it].[YearsExperience] as [Value_2]
				FROM
					[odata_person] [it]
			) [it_1]
		GROUP BY
			[it_1].[Name],
			[it_1].[Value_1]
	) [it_2]
ORDER BY
	[it_2].[SUM_1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [odata_person]

