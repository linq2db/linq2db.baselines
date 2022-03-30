BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableWithData]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [TableWithData]
(
	[Id]       INTEGER      NOT NULL,
	[Value]    INTEGER      NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [TableWithData]
(
	[Id],
	[Value],
	[ValueStr]
)
VALUES
(1,-1,'Str1'),
(2,-2,'Str2'),
(3,-3,'Str3'),
(4,-4,'Str4'),
(5,-5,'Str5'),
(6,-6,'Str6'),
(7,-7,'Str7'),
(8,-8,'Str8'),
(9,-9,'Str9')

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [DestinationTable]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [DestinationTable]
(
	[Id]       INTEGER      NOT NULL,
	[Value]    INTEGER      NOT NULL,
	[ValueStr] NVarChar(50)     NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO [DestinationTable]
(
	[Id],
	[Value],
	[ValueStr]
)
VALUES
(1,0,'0Dst'),
(2,-1,'-1Dst'),
(3,-2,'-2Dst'),
(4,-3,'-3Dst'),
(5,-4,'-4Dst'),
(6,-5,'-5Dst'),
(7,-6,'-6Dst'),
(8,-7,'-7Dst'),
(9,-8,'-8Dst')

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

UPDATE
	[DestinationTable]
SET
	([Id], [Value], [ValueStr]) = (
		SELECT
			[_].[Id],
			[_].[Value],
			[_].[ValueStr]
		FROM
			[TableWithData] [_]
				INNER JOIN [DestinationTable] [t] ON [t].[Id] = [_].[Id]
		WHERE
			[_].[Id] = 3 AND
			[DestinationTable].[Id] = [t].[Id] AND
			[DestinationTable].[Value] = [t].[Value] AND
			([DestinationTable].[ValueStr] = [t].[ValueStr] OR [DestinationTable].[ValueStr] IS NULL AND [t].[ValueStr] IS NULL)
	)
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[TableWithData] [_1]
				INNER JOIN [DestinationTable] [t_1] ON [t_1].[Id] = [_1].[Id]
		WHERE
			[_1].[Id] = 3 AND
			[DestinationTable].[Id] = [t_1].[Id] AND
			[DestinationTable].[Value] = [t_1].[Value] AND
			([DestinationTable].[ValueStr] = [t_1].[ValueStr] OR [DestinationTable].[ValueStr] IS NULL AND [t_1].[ValueStr] IS NULL)
	)
RETURNING
	[DestinationTable].[Value]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [DestinationTable]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [TableWithData]

