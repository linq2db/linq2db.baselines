﻿BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[odata_person]', N'U') IS NOT NULL)
	DROP TABLE [odata_person]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[odata_person]', N'U') IS NULL)
	CREATE TABLE [odata_person]
	(
		[Name]            NVarChar(50)   NOT NULL,
		[YearsExperience] Int            NOT NULL,
		[Title]           NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_odata_person] PRIMARY KEY CLUSTERED ([Name])
	)

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

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
-- SqlServer.2008.MS SqlServer.2008
DECLARE @TypedProperty NVarChar(4000) -- String
SET     @TypedProperty = N'Engineer'
DECLARE @TypedProperty_1 NVarChar(4000) -- String
SET     @TypedProperty_1 = N'QA'

SELECT
	[t1].[Name],
	[t1].[Key_1],
	Count(*)
FROM
	(
		SELECT
			[$it].[Title] as [Key_1],
			N'Title' as [Name]
		FROM
			[odata_person] [$it]
		WHERE
			([$it].[Title] = @TypedProperty OR [$it].[Title] = @TypedProperty_1)
	) [t1]
GROUP BY
	[t1].[Key_1],
	[t1].[Name]

BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

IF (OBJECT_ID(N'[odata_person]', N'U') IS NOT NULL)
	DROP TABLE [odata_person]

