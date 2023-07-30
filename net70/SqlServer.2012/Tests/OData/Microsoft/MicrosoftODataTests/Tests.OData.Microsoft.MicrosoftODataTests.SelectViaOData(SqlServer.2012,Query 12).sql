﻿BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[odata_person]', N'U') IS NOT NULL)
	DROP TABLE [odata_person]

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[odata_person]', N'U') IS NULL)
	CREATE TABLE [odata_person]
	(
		[Name]            NVarChar(50)   NOT NULL,
		[YearsExperience] Int            NOT NULL,
		[Title]           NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_odata_person] PRIMARY KEY CLUSTERED ([Name])
	)

BeforeExecute
-- SqlServer.2012

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
-- SqlServer.2012

SELECT
	N'Title',
	[selectParam].[Title],
	Count(*)
FROM
	[odata_person] [selectParam]
GROUP BY
	[selectParam].[Title]
ORDER BY
	Count(*)

BeforeExecute
-- SqlServer.2012

IF (OBJECT_ID(N'[odata_person]', N'U') IS NOT NULL)
	DROP TABLE [odata_person]

