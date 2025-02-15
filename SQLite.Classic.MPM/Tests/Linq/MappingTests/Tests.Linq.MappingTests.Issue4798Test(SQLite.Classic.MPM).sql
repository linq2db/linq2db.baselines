BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS Guid) IN (X'A1090F9361B8E544BC320FD9D9D7D738', X'B15615B73EE8424488B08F8BA79B5506')
	)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite
DECLARE @tenderId NVarChar(36) -- String
SET     @tenderId = '30a99dd7-e65e-4b47-806b-6dcbefed4134'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			[tender] [i]
		WHERE
			CAST([i].[id] AS NVarChar(36)) = @tenderId
	)

