BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [odata_person]

BeforeExecute
-- SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [odata_person]
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
	[t2].[Name],
	[t2].[Key_1],
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
					[t2].[Key_1] = [it2].[Title] AND [t2].[Name] = 'Title'
			) [t1]
	)
FROM
	(
		SELECT
			[selectParam].[Title] as [Key_1],
			'Title' as [Name]
		FROM
			[odata_person] [selectParam]
	) [t2]
GROUP BY
	[t2].[Key_1],
	[t2].[Name]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [odata_person]

