BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [PERSON_1900]
(
	[AGE]     INTEGER       NOT NULL,
	[NAME]    NVarChar(255)     NULL,
	[OPTIONS] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO [PERSON_1900]
(
	[AGE],
	[NAME],
	[OPTIONS]
)
VALUES
(10,'Some',4)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[p].[AGE],
	[p].[NAME],
	[p].[OPTIONS]
FROM
	[PERSON_1900] [p]
WHERE
	(([p].[OPTIONS] & 15) = 4 OR ([p].[OPTIONS] & 15) = 5)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE [PERSON_1900]

