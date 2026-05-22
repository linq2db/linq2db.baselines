-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[T_f26e28b53fe0]
(
	[item] NVarChar(255)     NULL
)

-- SQLite.Classic.MPM SQLite.Classic SQLite

INSERT INTO temp.[T_f26e28b53fe0]
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

-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	[t1].[item]
FROM
	temp.[T_f26e28b53fe0] [t1]
WHERE
	[t1].[item] = 'alpha' OR [t1].[item] = 'iota' OR [t1].[item] = 'zeta'
ORDER BY
	[t1].[item]

-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[T_f26e28b53fe0]

