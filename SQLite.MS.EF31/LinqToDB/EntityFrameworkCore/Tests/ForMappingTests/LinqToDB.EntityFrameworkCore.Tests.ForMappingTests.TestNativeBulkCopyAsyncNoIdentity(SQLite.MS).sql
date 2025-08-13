-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[NoIdentity]
(
	[Id]   TEXT NOT NULL,
	[Name] TEXT NOT NULL,

	CONSTRAINT [PK_NoIdentity] PRIMARY KEY ([Id])
)



-- SQLite.MS SQLite (asynchronously)

INSERT INTO temp.[NoIdentity]
(
	[Id],
	[Name]
)
VALUES
('BC7B663D-0FDE-4327-8F92-5D8CC3A11D11','John Doe'),
('A948600D-DE21-4F74-8AC2-9516B287076E','Jane Doe')



-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	temp.[NoIdentity] [t1]



-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[NoIdentity]



