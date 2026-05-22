-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[T_b4e26eddd5b6]
(
	[item] NVarChar(255)     NULL
)

-- SQLite.Classic.MPU SQLite.Classic SQLite

INSERT INTO temp.[T_b4e26eddd5b6]
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
	temp.[T_b4e26eddd5b6] [t1]
WHERE
	[t1].[item] = 'alpha' OR [t1].[item] = 'iota' OR [t1].[item] = 'zeta'
ORDER BY
	[t1].[item]

-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[T_b4e26eddd5b6]

