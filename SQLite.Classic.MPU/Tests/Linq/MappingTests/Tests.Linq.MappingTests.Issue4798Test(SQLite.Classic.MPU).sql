BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS Guid) IN (X'3D667BBCDE0F27438F925D8CC3A11D11', X'0D6048A921DE744F8AC29516B287076E')
	)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite
DECLARE @tenderId NVarChar(36) -- String
SET     @tenderId = 'bc7b663d-0fde-4327-8f92-5d8cc3a11d11'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS NVarChar(36)) = @tenderId
	)

