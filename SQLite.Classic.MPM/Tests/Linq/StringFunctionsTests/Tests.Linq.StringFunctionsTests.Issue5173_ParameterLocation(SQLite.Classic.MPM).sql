-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	GROUP_CONCAT('test:' || CAST([grp_1].[ch] AS VarChar(11)), ';')
FROM
	(
		SELECT
			[ch].[item] % 10 as [Key_1],
			[ch].[item] as [ch]
		FROM
			[Parent] [grp]
				CROSS JOIN (
					SELECT NULL [item] WHERE 1 = 0
					UNION ALL
					VALUES
						(11), (13)
					) [ch]
		ORDER BY
			[grp].[ParentID]
	) [grp_1]
GROUP BY
	[grp_1].[Key_1]

