﻿BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[odata_person]', N'U') IS NOT NULL)
	DROP TABLE [odata_person]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[odata_person]', N'U') IS NULL)
	CREATE TABLE [odata_person]
	(
		[Name]            NVarChar(50)   NOT NULL,
		[YearsExperience] Int            NOT NULL,
		[Title]           NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_odata_person] PRIMARY KEY CLUSTERED ([Name])
	)

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

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
-- SqlServer.2014.MS SqlServer.2014
DECLARE @TypedProperty NVarChar(4000) -- String
SET     @TypedProperty = N'Engineer'
DECLARE @TypedProperty_1 NVarChar(4000) -- String
SET     @TypedProperty_1 = N'QA'

SELECT
	[it_1].[Name],
	[it_1].[Value_1],
	COUNT(*)
FROM
	(
		SELECT
			N'Title' as [Name],
			[it].[Title] as [Value_1]
		FROM
			[odata_person] [it]
		WHERE
			([it].[Title] = @TypedProperty OR [it].[Title] = @TypedProperty_1)
	) [it_1]
GROUP BY
	[it_1].[Name],
	[it_1].[Value_1]

BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

IF (OBJECT_ID(N'[odata_person]', N'U') IS NOT NULL)
	DROP TABLE [odata_person]

