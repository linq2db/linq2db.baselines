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
	[selectParam].[Title],
	(
		SELECT
			Count(*)
		FROM
			(
				SELECT DISTINCT
					[_].[Title]
				FROM
					[odata_person] [_]
				WHERE
					[selectParam].[Title] = [_].[Title]
			) [t1]
	)
FROM
	[odata_person] [selectParam]
GROUP BY
	[selectParam].[Title]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [odata_person]

