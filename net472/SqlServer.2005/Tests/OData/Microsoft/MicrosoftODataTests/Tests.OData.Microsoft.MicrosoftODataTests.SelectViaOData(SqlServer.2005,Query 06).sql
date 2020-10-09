BeforeExecute
-- SqlServer.2005

CREATE TABLE [odata_person]
(
	[Name]            NVarChar(50)   NOT NULL,
	[YearsExperience] Int            NOT NULL,
	[Title]           NVarChar(4000) NOT NULL,

	CONSTRAINT [PK_odata_person] PRIMARY KEY CLUSTERED ([Name])
)

BeforeExecute
-- SqlServer.2005

INSERT INTO [odata_person]
(
	[Name],
	[YearsExperience],
	[Title]
)
SELECT N'N1',3,N'Engineer' UNION ALL
SELECT N'N2',4,N'Engineer'

BeforeExecute
-- SqlServer.2005

SELECT 
	N'Title', 
	[selectParam].[Title], 
	Avg([selectParam].[YearsExperience])
FROM
	[odata_person] [selectParam]
GROUP BY
	[selectParam].[Title]
ORDER BY
	Avg([selectParam].[YearsExperience])

BeforeExecute
-- SqlServer.2005

DROP TABLE [odata_person]

