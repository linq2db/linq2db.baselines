-- SQLite.MS SQLite

CREATE TEMPORARY TABLE temp.[T_1d7c68d87102]
(
	[item] NVarChar(255)     NULL
)

-- SQLite.MS SQLite

INSERT INTO temp.[T_1d7c68d87102]
(
	[item]
)
VALUES
('tag1'),
('tag2'),
('tag4'),
('tag5'),
('tag7'),
('tag8')

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
			temp.[T_1d7c68d87102] [t1]
		WHERE
			[r].[Tag] = [t1].[item] OR [r].[Tag] IS NULL AND [t1].[item] IS NULL
	) OR
	[r].[Tag] IS NULL
ORDER BY
	[r].[Id]

-- SQLite.MS SQLite

DROP TABLE IF EXISTS temp.[T_1d7c68d87102]

