BeforeExecute
-- SqlServer.2019 SqlServer.2017

CREATE TABLE [odata_person]
(
	[Name]            NVarChar(50)   NOT NULL,
	[YearsExperience] Int            NOT NULL,
	[Title]           NVarChar(4000) NOT NULL,

	CONSTRAINT [PK_odata_person] PRIMARY KEY CLUSTERED ([Name])
)

BeforeExecute
-- SqlServer.2019 SqlServer.2017

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
-- SqlServer.2019 SqlServer.2017

SELECT 
	N'Title', 
	[selectParam].[Title], 
	Max([selectParam].[YearsExperience])
FROM
	[odata_person] [selectParam]
GROUP BY
	[selectParam].[Title]
ORDER BY
	Max([selectParam].[YearsExperience])

BeforeExecute
-- SqlServer.2019 SqlServer.2017

DROP TABLE [odata_person]

