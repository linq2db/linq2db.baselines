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
	[g_2].[Title],
	(
		SELECT
			Count(*)
		FROM
			(
				SELECT DISTINCT
					[it].[Title]
				FROM
					[odata_person] [it]
				WHERE
					[g_2].[c1] = 'Title' AND [g_2].[Title] = [it].[Title]
			) [t1]
	)
FROM
	(
		SELECT
			'Title' as [c1],
			[g_1].[Title]
		FROM
			[odata_person] [g_1]
	) [g_2]
GROUP BY
	[g_2].[c1],
	[g_2].[Title]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [odata_person]

