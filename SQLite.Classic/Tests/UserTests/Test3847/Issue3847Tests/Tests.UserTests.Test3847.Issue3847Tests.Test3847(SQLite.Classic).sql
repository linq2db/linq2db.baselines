BeforeExecute
-- SQLite.Classic SQLite

SELECT
	[outfeed].[Id],
	(
		SELECT
			[t1].[Value]
		FROM
			(
				SELECT NULL [Key], NULL [Value] WHERE 1 = 0
				UNION ALL
				VALUES
					(X'3D667BBCDE0F27438F925D8CC3A11D11','2020-02-29 17:54:55.123'),
					(X'0D6048A921DE744F8AC29516B287076E','2020-02-29 17:54:55.123'),
					(X'A57339BD2343D84D9F4FDF9F93E2A627','2020-02-29 17:54:55.123')
				) [t1]
		WHERE
			[t1].[Key] = [outfeed].[Id]
		LIMIT 1
	),
	(
		SELECT
			[t2].[Value]
		FROM
			(
				SELECT NULL [Key], NULL [Value] WHERE 1 = 0
				UNION ALL
				VALUES
					(X'75C8B1768722824BA23B7967C5EAFED8','2020-02-29 17:54:55.123'),
					(X'A4066665366E3144ADD685F886A1C7C2','2020-02-29 17:54:55.123')
				) [t2]
		WHERE
			[t2].[Key] = [outfeed].[Id]
		LIMIT 1
	)
FROM
	[Test3847_OutfeedTransportOrder] [outfeed]

