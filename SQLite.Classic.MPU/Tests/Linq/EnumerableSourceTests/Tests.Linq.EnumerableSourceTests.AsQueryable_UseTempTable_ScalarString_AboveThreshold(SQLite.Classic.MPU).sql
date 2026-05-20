-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[T_df1bd739edf4]
(
	[item] NVarChar(255)     NULL
)

-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO temp.[T_df1bd739edf4]
(
	[item]
)
VALUES
('alpha'),
('beta'),
('gamma'),
('delta'),
('epsilon'),
('zeta'),
('eta'),
('theta'),
('iota'),
('kappa')

-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[item]
FROM
	temp.[T_df1bd739edf4] [t1]
WHERE
	[t1].[item] = 'alpha' OR [t1].[item] = 'iota' OR [t1].[item] = 'zeta'
ORDER BY
	[t1].[item]

-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[T_df1bd739edf4]

