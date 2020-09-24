﻿BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE [odata_person]
(
	[Name]            NVarChar(50)  NOT NULL,
	[YearsExperience] INTEGER       NOT NULL,
	[Title]           NVarChar(255) NOT NULL,

	CONSTRAINT [PK_odata_person] PRIMARY KEY ([Name])
)

BeforeExecute
-- SQLite.Classic SQLite

INSERT INTO [odata_person]
(
	[Name],
	[YearsExperience],
	[Title]
)
VALUES
('N1',3,'Engineer'),
('N2',4,'Engineer')

BeforeExecute
-- SQLite.Classic SQLite

SELECT
	'Title',
	[selectParam].[Title],
	(
		SELECT
			Count(*)
		FROM
			(
				SELECT DISTINCT
					[it2].[YearsExperience]
				FROM
					[odata_person] [it2]
				WHERE
					[selectParam].[Title] = [it2].[Title]
			) [t1]
	)
FROM
	[odata_person] [selectParam]
GROUP BY
	[selectParam].[Title]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE [odata_person]

