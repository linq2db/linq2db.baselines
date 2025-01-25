BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[odata_person]', N'U') IS NOT NULL)
	DROP TABLE [odata_person]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[odata_person]', N'U') IS NULL)
	CREATE TABLE [odata_person]
	(
		[Name]            NVarChar(50)   NOT NULL,
		[YearsExperience] Int            NOT NULL,
		[Title]           NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_odata_person] PRIMARY KEY CLUSTERED ([Name])
	)

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

INSERT INTO [odata_person]
(
	[Name],
	[YearsExperience],
	[Title]
)
SELECT N'N1',3,N'Engineer' UNION ALL
SELECT N'N2',4,N'Engineer'

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

SELECT
	N'Title',
	[it].[Title],
	MIN([it].[YearsExperience])
FROM
	[odata_person] [it]
GROUP BY
	[it].[Title]

BeforeExecute
-- SqlServer.2005.MS SqlServer.2005

IF (OBJECT_ID(N'[odata_person]', N'U') IS NOT NULL)
	DROP TABLE [odata_person]

