-- SQLite.Classic SQLite

CREATE TEMPORARY TABLE temp.[T_4dba006d65be]
(
	[item] NVarChar(255)     NULL
)

-- SQLite.Classic SQLite

INSERT INTO temp.[T_4dba006d65be]
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
			temp.[T_4dba006d65be] [t1]
		WHERE
			[r].[Tag] = [t1].[item] OR [r].[Tag] IS NULL AND [t1].[item] IS NULL
	) OR
	[r].[Tag] IS NULL
ORDER BY
	[r].[Id]

-- SQLite.Classic SQLite

DROP TABLE IF EXISTS temp.[T_4dba006d65be]

