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
	[t3].[Name],
	[t3].[Value_1],
	[t3].[Count_1]
FROM
	(
		SELECT
			[$it_3].[Name],
			[$it_3].[Value_1],
			[t2].[Count_1]
		FROM
			(
				SELECT
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
			) [$it_3]
				OUTER APPLY (
					SELECT
						Count(*) as [Count_1]
					FROM
						(
							SELECT DISTINCT
								[$it_2].[YearsExperience] as [Value_1]
							FROM
								[odata_person] [$it_2]
							WHERE
								[$it_3].[Name] = N'Title' AND [$it_3].[Value_1] = [$it_2].[Title]
						) [t1]
				) [t2]
	) [t3]
ORDER BY
	[t3].[Count_1]

BeforeExecute
-- SqlServer.SA.MS SqlServer.2019

DROP TABLE IF EXISTS [odata_person]

