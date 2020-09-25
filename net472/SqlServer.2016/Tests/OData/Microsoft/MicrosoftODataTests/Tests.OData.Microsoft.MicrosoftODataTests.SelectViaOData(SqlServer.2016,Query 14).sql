﻿BeforeExecute
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
DECLARE @TypedProperty NVarChar(4000) -- String
SET     @TypedProperty = N'Engineer'
DECLARE @TypedProperty_1 NVarChar(4000) -- String
SET     @TypedProperty_1 = N'QA'

SELECT
	N'Title',
	[$it].[Title],
	Count(*)
FROM
	[odata_person] [$it]
WHERE
	([$it].[Title] = @TypedProperty OR [$it].[Title] = @TypedProperty_1)
GROUP BY
	[$it].[Title]

BeforeExecute
-- SqlServer.2016 SqlServer.2012

DROP TABLE [odata_person]

