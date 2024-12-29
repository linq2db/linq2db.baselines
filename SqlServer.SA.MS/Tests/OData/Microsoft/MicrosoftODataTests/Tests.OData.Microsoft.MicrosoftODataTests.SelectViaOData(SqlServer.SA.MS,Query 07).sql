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
	[t2].[Value_2],
	[t2].[Value_1]
FROM
	(
		SELECT
			(
				SELECT
					COUNT(*)
				FROM
					(
						SELECT DISTINCT
							*
						FROM
							[odata_person] [it_2]
						WHERE
							[it_1].[Name] = N'Title' AND [it_1].[Value_1] = [it_2].[Title]
					) [t1]
			) as [Value_1],
			[it_1].[Name],
			[it_1].[Value_1] as [Value_2]
		FROM
			(
				SELECT
					N'Title' as [Name],
					[it].[Title] as [Value_1]
				FROM
					[odata_person] [it]
				GROUP BY
					[it].[Title]
			) [it_1]
	) [t2]
ORDER BY
	[t2].[Value_1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [odata_person]

