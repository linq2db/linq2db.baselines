BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [PERSON_1900]
(
	[AGE]     INTEGER       NOT NULL,
	[NAME]    NVarChar(255)     NULL,
	[OPTIONS] INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.MS SQLite

INSERT INTO [PERSON_1900]
(
	[AGE],
	[NAME],
	[OPTIONS]
)
VALUES
(10,'Some',4)

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[p].[AGE],
	[p].[NAME],
	[p].[OPTIONS]
FROM
	[PERSON_1900] [p]
WHERE
	(([p].[OPTIONS] & 15) = 4 OR ([p].[OPTIONS] & 15) = 5)

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE [PERSON_1900]

