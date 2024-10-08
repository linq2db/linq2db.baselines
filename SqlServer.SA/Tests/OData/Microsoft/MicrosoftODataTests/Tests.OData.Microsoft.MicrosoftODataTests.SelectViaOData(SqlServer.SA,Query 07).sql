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
	[t1].[Value_2],
	[t1].[Value_1]
FROM
	(
		SELECT
			COUNT(DISTINCT [it].[YearsExperience]) as [Value_1],
			[it].[Title] as [Value_2]
		FROM
			[odata_person] [it]
		GROUP BY
			[it].[Title]
	) [t1]
ORDER BY
	[t1].[Value_1]

BeforeExecute
-- SqlServer.SA SqlServer.2019

DROP TABLE IF EXISTS [odata_person]

