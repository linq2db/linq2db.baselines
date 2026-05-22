-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[T_aa45a08037e9]
(
	[item] NVarChar(255)     NULL
)

-- SQLite.MS SQLite

INSERT INTO temp.[T_aa45a08037e9]
(
	[item]
)
VALUES
('row1'),
('row2'),
('row3'),
('row4'),
('row5'),
('row6'),
('row7'),
('row8'),
('row9'),
('row10')

-- SQLite.MS SQLite

SELECT
	[r].[Id],
	[r].[Name],
	[r].[Tag]
FROM
	[ContainsTempTableTestRow] [r]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			temp.[T_aa45a08037e9] [t1]
		WHERE
			[r].[Name] = [t1].[item] OR [r].[Name] IS NULL AND [t1].[item] IS NULL
	)
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[T_aa45a08037e9]

