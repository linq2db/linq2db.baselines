﻿BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [odata_person]

BeforeExecute
-- SqlServer.2022

IF (OBJECT_ID(N'[odata_person]', N'U') IS NULL)
	CREATE TABLE [odata_person]
	(
		[Name]            NVarChar(50)   NOT NULL,
		[YearsExperience] Int            NOT NULL,
		[Title]           NVarChar(4000) NOT NULL,

		CONSTRAINT [PK_odata_person] PRIMARY KEY CLUSTERED ([Name])
	)

BeforeExecute
-- SqlServer.2022

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
-- SqlServer.2022

SELECT
	[t2].[Name],
	[t2].[Key_1],
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
			N'Title' as [Name],
			[selectParam].[Title] as [Key_1]
		FROM
			[odata_person] [selectParam]
		GROUP BY
			[selectParam].[Title]
	) [t2]
ORDER BY
	[t2].[Value_1]

BeforeExecute
-- SqlServer.2022

DROP TABLE IF EXISTS [odata_person]

