BeforeExecute
-- SqlServer.2016 SqlServer.2012

CREATE TABLE [odata_person]
(
	[Name]            NVarChar(50)   NOT NULL,
	[YearsExperience] Int            NOT NULL,
	[Title]           NVarChar(4000) NOT NULL,

	CONSTRAINT [PK_odata_person] PRIMARY KEY CLUSTERED ([Name])
)

BeforeExecute
-- SqlServer.2016 SqlServer.2012

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
-- SqlServer.2016 SqlServer.2012

SELECT
	N'Title',
	[t2].[Title],
	[t2].[Value_1]
FROM
	(
		SELECT
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
							[selectParam].[Title] = [$it].[Title]
					) [t1]
			) as [Value_1],
			[selectParam].[Title]
		FROM
			[odata_person] [selectParam]
		GROUP BY
			[selectParam].[Title]
	) [t2]
ORDER BY
	[t2].[Value_1]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

DROP TABLE [odata_person]

