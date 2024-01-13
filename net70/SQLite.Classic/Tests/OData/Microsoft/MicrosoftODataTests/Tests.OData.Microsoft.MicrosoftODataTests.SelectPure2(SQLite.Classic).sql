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
	[it_1].[c1],
	[it_1].[c2],
	(
		SELECT
			Count(*)
		FROM
			(
				SELECT DISTINCT
					[it_2].[YearsExperience] as [Value_1]
				FROM
					[odata_person] [it_2]
				WHERE
					[it_1].[c1] = 'Title' AND ([it_1].[c2] = CASE
						WHEN [it_2].[Name] IS NULL
							THEN NULL
						ELSE [it_2].[Title]
					END OR [it_1].[c2] IS NULL AND CASE
						WHEN [it_2].[Name] IS NULL
							THEN NULL
						ELSE [it_2].[Title]
					END IS NULL)
			) [t1]
	)
FROM
	(
		SELECT
			'Title' as [c1],
			CASE
				WHEN [it].[Name] IS NULL THEN NULL
				ELSE [it].[Title]
			END as [c2]
		FROM
			[odata_person] [it]
	) [it_1]
GROUP BY
	[it_1].[c1],
	[it_1].[c2]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [odata_person]

