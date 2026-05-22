-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[T_28d247846daa]
(
	[K1]   INTEGER       NOT NULL,
	[K2]   NVarChar(32)  NOT NULL,
	[Data] NVarChar(255)     NULL,

	CONSTRAINT [PK_T_28d247846daa] PRIMARY KEY ([K1], [K2])
)

-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO temp.[T_28d247846daa]
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
(10,'k10','data10'),
(11,'k11','data11'),
(12,'k12','data12'),
(13,'k13','data13'),
(14,'k14','data14'),
(15,'k15','data15')

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[a].[K1],
	[b].[K1]
FROM
	[ContainsTempTableComposite] [a],
	[ContainsTempTableComposite] [b]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			temp.[T_28d247846daa] [t1]
		WHERE
			[a].[K1] = [t1].[K1] AND [a].[K2] = [t1].[K2]
	) AND
	EXISTS(
		SELECT
			*
		FROM
			temp.[T_28d247846daa] [t2]
		WHERE
			[b].[K1] = [t2].[K1] AND [b].[K2] = [t2].[K2]
	) AND
	[a].[K1] < [b].[K1]

-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[T_28d247846daa]

