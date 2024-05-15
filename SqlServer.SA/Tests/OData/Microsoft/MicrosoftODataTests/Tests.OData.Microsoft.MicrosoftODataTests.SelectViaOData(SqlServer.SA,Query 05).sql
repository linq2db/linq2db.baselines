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
	[it_1].[Name],
	[it_1].[Value_1],
	[it_1].[MAX_1]
FROM
	(
		SELECT
			MAX([it].[YearsExperience]) as [MAX_1],
			N'Title' as [Name],
			[it].[Title] as [Value_1]
		FROM
			[odata_person] [it]
		GROUP BY
			[it].[Title]
	) [it_1]
ORDER BY
	[it_1].[MAX_1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [odata_person]

