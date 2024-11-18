--  SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[NoIdentity]
(
	[Id]   TEXT NOT NULL,
	[Name] TEXT NOT NULL,

	CONSTRAINT [PK_NoIdentity] PRIMARY KEY ([Id])
)



--  SQLite.MS SQLite

INSERT INTO temp.[NoIdentity]
(
	[Id],
	[Name]
)
VALUES
('AECEA625-E2F5-49FC-A8AC-1E6A0C6DF2E9','John Doe'),
('1009254F-2349-4268-B810-C2A2B129715E','Jane Doe')



--  SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	temp.[NoIdentity] [t1]



--  SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[NoIdentity]



