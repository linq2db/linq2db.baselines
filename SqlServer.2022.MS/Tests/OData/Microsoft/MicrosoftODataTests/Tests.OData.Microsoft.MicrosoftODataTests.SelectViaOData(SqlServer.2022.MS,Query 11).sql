BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [odata_person]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

IF (OBJECT_ID(N'[odata_person]', N'U') IS NULL)
	CREATE TABLE [odata_person]
	(
		[Name]            NVarChar(50)   NOT NULL,
		[YearsExperience] Int            NOT NULL,
		[Title]           NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_odata_person] PRIMARY KEY CLUSTERED ([Name])
	)

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

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
-- SqlServer.2022.MS SqlServer.2022

SELECT
	[$it_1].[c1],
	[$it_1].[Title],
	MAX([$it_1].[Value_1])
FROM
	(
		SELECT
			N'Title' as [c1],
			[$it].[Title],
			[$it].[YearsExperience] as [Value_1]
		FROM
			[odata_person] [$it]
	) [$it_1]
GROUP BY
	[$it_1].[c1],
	[$it_1].[Title]

BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

DROP TABLE IF EXISTS [odata_person]

