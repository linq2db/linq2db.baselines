-- SQLite.Classic SQLite
DECLARE @Guid Blob -- Guid
SET     @Guid = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @Sold Integer -- Int32
SET     @Sold = 100

INSERT INTO [Campaign]
(
	[Guid],
	[Sold]
)
VALUES
(
	@Guid,
	@Sold
)

-- SQLite.Classic SQLite
DECLARE @Guid Blob -- Guid
SET     @Guid = X'0D6048A921DE744F8AC29516B287076E'
DECLARE @Sold Integer -- Int32
SET     @Sold = 40

INSERT INTO [Campaign]
(
	[Guid],
	[Sold]
)
VALUES
(
	@Guid,
	@Sold
)

-- SQLite.Classic SQLite
DECLARE @Guid Blob -- Guid
SET     @Guid = X'A57339BD2343D84D9F4FDF9F93E2A627'
DECLARE @Sold Integer -- Int32
SET     @Sold = 200

INSERT INTO [Campaign]
(
	[Guid],
	[Sold]
)
VALUES
(
	@Guid,
	@Sold
)

-- SQLite.Classic SQLite
SELECT
	[r].[Guid],
	[lc].[Count],
	CASE
		WHEN [lc].[Count] IS NOT NULL THEN CAST(CAST([lc].[Count] AS Decimal) AS Float) / [r].[Sold] * 100
		ELSE NULL
	END
FROM
	[Campaign] [r]
		LEFT JOIN (
			SELECT NULL [Key], NULL [Count] WHERE 1 = 0
			UNION ALL
			VALUES
				(X'3D667BBCDE0F27438F925D8CC3A11D11',5),
				(X'0D6048A921DE744F8AC29516B287076E',10)
			) [lc] ON [r].[Guid] = [lc].[Key]

