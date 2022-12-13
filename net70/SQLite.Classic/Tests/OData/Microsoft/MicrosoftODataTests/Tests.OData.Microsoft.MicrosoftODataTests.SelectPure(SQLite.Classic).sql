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
	[t1].[Name],
	[t1].[Key_1],
	Sum([t1].[YearsExperience])
FROM
	(
		SELECT
			[selectParam].[Title] as [Key_1],
			'Title' as [Name],
			[selectParam].[YearsExperience]
		FROM
			[odata_person] [selectParam]
	) [t1]
GROUP BY
	[t1].[Key_1],
	[t1].[Name]

BeforeExecute
-- SQLite.Classic SQLite

DROP TABLE IF EXISTS [odata_person]

