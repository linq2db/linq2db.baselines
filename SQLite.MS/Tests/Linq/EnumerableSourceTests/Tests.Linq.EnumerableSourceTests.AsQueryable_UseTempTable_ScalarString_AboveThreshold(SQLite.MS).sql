-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[T_403caff8d2e9]
(
	[item] NVarChar(255)     NULL
)

-- SQLite.MS SQLite

INSERT INTO temp.[T_403caff8d2e9]
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

-- SQLite.MS SQLite

SELECT
	[t1].[item]
FROM
	temp.[T_403caff8d2e9] [t1]
WHERE
	[t1].[item] = 'alpha' OR [t1].[item] = 'iota' OR [t1].[item] = 'zeta'
ORDER BY
	[t1].[item]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[T_403caff8d2e9]

