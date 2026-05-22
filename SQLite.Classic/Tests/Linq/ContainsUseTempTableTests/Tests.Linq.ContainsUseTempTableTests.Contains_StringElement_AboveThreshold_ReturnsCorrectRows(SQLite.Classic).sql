-- SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[T_18f5868e3165]
(
	[item] NVarChar(255)     NULL
)

-- SQLite.Classic SQLite

INSERT INTO temp.[T_18f5868e3165]
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

-- SQLite.Classic SQLite

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
			temp.[T_18f5868e3165] [t1]
		WHERE
			[r].[Name] = [t1].[item] OR [r].[Name] IS NULL AND [t1].[item] IS NULL
	)
ORDER BY
	[r].[Id]

-- SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[T_18f5868e3165]

