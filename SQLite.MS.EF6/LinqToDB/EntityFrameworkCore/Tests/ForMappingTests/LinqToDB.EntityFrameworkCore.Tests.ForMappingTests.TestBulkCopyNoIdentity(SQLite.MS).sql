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
('38997B88-4415-47D9-B796-C0BD07A3E4D3','John Doe'),
('87EAB2CD-9F16-4E82-96CC-EA8C03C6808A','Jane Doe')



--  SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	temp.[NoIdentity] [t1]



--  SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[NoIdentity]



