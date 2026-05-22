-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[T_e9c44dbc7022]
(
	[K1]   INTEGER       NOT NULL,
	[K2]   NVarChar(32)  NOT NULL,
	[Data] NVarChar(255)     NULL,

	CONSTRAINT [PK_T_e9c44dbc7022] PRIMARY KEY ([K1], [K2])
)

-- SQLite.MS SQLite

INSERT INTO temp.[T_e9c44dbc7022]
(
	[K1],
	[K2],
	[Data]
)
VALUES
(1,'k1','data1'),
(2,'k2','data2'),
(3,'k3','data3'),
(4,'k4','data4'),
(5,'k5','data5'),
(6,'k6','data6'),
(7,'k7','data7'),
(8,'k8','data8'),
(9,'k9','data9'),
(10,'k10','data10')

-- SQLite.MS SQLite

SELECT
	[r].[K1],
	[r].[K2],
	[r].[Data]
FROM
	[ContainsTempTableComposite] [r]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			temp.[T_e9c44dbc7022] [t1]
		WHERE
			[r].[K1] = [t1].[K1] AND [r].[K2] = [t1].[K2]
	)
ORDER BY
	[r].[K1]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[T_e9c44dbc7022]

-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[T_e9c44dbc7022]
(
	[K1]   INTEGER       NOT NULL,
	[K2]   NVarChar(32)  NOT NULL,
	[Data] NVarChar(255)     NULL,

	CONSTRAINT [PK_T_e9c44dbc7022] PRIMARY KEY ([K1], [K2])
)

-- SQLite.MS SQLite

INSERT INTO temp.[T_e9c44dbc7022]
(
	[K1],
	[K2],
	[Data]
)
VALUES
(1,'k1','data1'),
(2,'k2','data2'),
(3,'k3','data3'),
(4,'k4','data4'),
(5,'k5','data5'),
(6,'k6','data6'),
(7,'k7','data7'),
(8,'k8','data8'),
(9,'k9','data9'),
(10,'k10','data10')

-- SQLite.MS SQLite

SELECT
	[r].[K1],
	[r].[K2],
	[r].[Data]
FROM
	[ContainsTempTableComposite] [r]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			temp.[T_e9c44dbc7022] [t1]
		WHERE
			[r].[K1] = [t1].[K1] AND [r].[K2] = [t1].[K2]
	)
ORDER BY
	[r].[K1]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[T_e9c44dbc7022]

