BeforeExecute
-- SQLite.MS SQLite

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS Guid) IN (X'06981941C0C38A4182CBD7B8107B4EC4', X'EE62CB4CFC138C45A6688996D0D9C036')
	)

BeforeExecute
-- SQLite.MS SQLite
DECLARE @tenderId NVarChar(36) -- String
SET     @tenderId = '0307dae1-bd61-48a7-90e6-056bb7f788c4'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS NVarChar(36)) = @tenderId
	)

