-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[T_86d0645c08b5]
(
	[Id]   INTEGER       NOT NULL,
	[Data] NVarChar(255)     NULL
)

-- SQLite.MS SQLite

INSERT INTO temp.[T_86d0645c08b5]
(
	[Id],
	[Data]
)
VALUES
(1000,'Data 1000'),
(1001,'Data 1001'),
(1002,'Data 1002'),
(1003,'Data 1003'),
(1004,'Data 1004'),
(1005,'Data 1005'),
(1006,'Data 1006'),
(1007,'Data 1007'),
(1008,'Data 1008'),
(1009,'Data 1009'),
(1010,'Data 1010'),
(1011,'Data 1011'),
(1012,'Data 1012'),
(1013,'Data 1013'),
(1014,'Data 1014'),
(1015,'Data 1015'),
(1016,'Data 1016'),
(1017,'Data 1017'),
(1018,'Data 1018'),
(1019,'Data 1019'),
(1020,'Data 1020'),
(1021,'Data 1021'),
(1022,'Data 1022'),
(1023,'Data 1023'),
(1024,'Data 1024'),
(1025,'Data 1025'),
(1026,'Data 1026'),
(1027,'Data 1027'),
(1028,'Data 1028'),
(1029,'Data 1029')

-- SQLite.MS SQLite

SELECT
	[t1].[Id],
	[t1].[Data]
FROM
	temp.[T_86d0645c08b5] [t1]
ORDER BY
	[t1].[Id]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[T_86d0645c08b5]

