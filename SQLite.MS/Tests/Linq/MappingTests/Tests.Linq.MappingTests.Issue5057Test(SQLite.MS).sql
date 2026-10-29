-- SQLite.MS SQLite
DECLARE @item Blob(16) -- Guid
SET     @item = X'3D667BBCDE0F27438F925D8CC3A11D11'
DECLARE @item_1 Blob(16) -- Guid
SET     @item_1 = X'A57339BD2343D84D9F4FDF9F93E2A627'

SELECT
	[i].[Id],
	[i].[Name]
FROM
	[Tender] [i]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(
				SELECT NULL [item] WHERE 1 = 0
				UNION ALL
				VALUES
					(@item), (@item_1)
				) [id]
		WHERE
			[id].[item] = [i].[Id]
	)
LIMIT 1

