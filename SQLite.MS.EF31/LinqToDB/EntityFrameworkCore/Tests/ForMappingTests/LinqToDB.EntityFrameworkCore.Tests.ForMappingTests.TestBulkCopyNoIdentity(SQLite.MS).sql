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
('CEAE221D-D13C-4200-A0ED-BDAFB4F77491','John Doe'),
('20B56DAF-FDB2-4479-9E7F-6703121E7B4F','Jane Doe')



--  SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Name]
FROM
	temp.[NoIdentity] [t1]



--  SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[NoIdentity]



