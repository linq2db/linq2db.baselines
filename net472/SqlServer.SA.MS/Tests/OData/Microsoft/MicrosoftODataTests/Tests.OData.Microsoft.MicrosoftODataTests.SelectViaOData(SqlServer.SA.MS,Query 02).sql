BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [odata_person]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

IF (OBJECT_ID(N'[odata_person]', N'U') IS NULL)
	CREATE TABLE [odata_person]
	(
		[Name]            NVarChar(50)   NOT NULL,
		[YearsExperience] Int            NOT NULL,
		[Title]           NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_odata_person] PRIMARY KEY CLUSTERED ([Name])
	)

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

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
-- SqlServer.SA.MS SqlServer.2019

SELECT
	[t2].[Name],
	[t2].[Key_1],
	(
		SELECT
			Count(*)
		FROM
			(
				SELECT DISTINCT
					[$it].[YearsExperience]
				FROM
					[odata_person] [$it]
				WHERE
					[t2].[Key_1] = [$it].[Title] AND [t2].[Name] = N'Title'
			) [t1]
	)
FROM
	(
		SELECT
			[selectParam].[Title] as [Key_1],
			N'Title' as [Name]
		FROM
			[odata_person] [selectParam]
	) [t2]
GROUP BY
	[t2].[Key_1],
	[t2].[Name]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [odata_person]

