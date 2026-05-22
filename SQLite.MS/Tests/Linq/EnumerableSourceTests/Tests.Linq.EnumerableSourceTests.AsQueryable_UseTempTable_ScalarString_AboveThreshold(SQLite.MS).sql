-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[T_eafd6d090c67]
(
	[item] NVarChar(255)     NULL
)

-- SQLite.MS SQLite

INSERT INTO temp.[T_eafd6d090c67]
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
	temp.[T_eafd6d090c67] [t1]
WHERE
	[t1].[item] = 'alpha' OR [t1].[item] = 'iota' OR [t1].[item] = 'zeta'
ORDER BY
	[t1].[item]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[T_eafd6d090c67]

