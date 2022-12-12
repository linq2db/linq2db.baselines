BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [odata_person]

BeforeExecute
-- SqlServer.2016

IF (OBJECT_ID(N'[odata_person]', N'U') IS NULL)
	CREATE TABLE [odata_person]
	(
		[Name]            NVarChar(50)   NOT NULL,
		[YearsExperience] Int            NOT NULL,
		[Title]           NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_odata_person] PRIMARY KEY CLUSTERED ([Name])
	)

BeforeExecute
-- SqlServer.2016

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
-- SqlServer.2016

SELECT
	[t1].[Name],
	[t1].[Key_1],
	Count(*)
FROM
	(
		SELECT
			[selectParam].[Title] as [Key_1],
			N'Title' as [Name]
		FROM
			[odata_person] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1],
	[t1].[Name]
ORDER BY
	Count(*)

BeforeExecute
-- SqlServer.2016

DROP TABLE IF EXISTS [odata_person]

