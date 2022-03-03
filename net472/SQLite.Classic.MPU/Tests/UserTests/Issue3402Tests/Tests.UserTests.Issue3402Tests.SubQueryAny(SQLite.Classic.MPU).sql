BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [VEMPLOYEE_SCH_SEC]
(
	[ACTIVE] Bit           NOT NULL,
	[ID]     INTEGER       NOT NULL,
	[NAME]   NVarChar(255) NOT NULL,

	CONSTRAINT [PK_VEMPLOYEE_SCH_SEC] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

CREATE TABLE [VEMPLOYEE_SCHDL_PERM]
(
	[ID]        INTEGER NOT NULL,
	[IS_ACTIVE] Bit     NOT NULL,

	CONSTRAINT [PK_VEMPLOYEE_SCHDL_PERM] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

SELECT
	[t1].[ID]
FROM
	(
		SELECT
			CASE
				WHEN EXISTS(
					SELECT
						*
					FROM
						[VEMPLOYEE_SCHDL_PERM] [y]
					WHERE
						[ess].[ID] = [y].[ID] AND [y].[IS_ACTIVE] = 1
				)
					THEN 1
				ELSE 0
			END as [hasAdditionalPermissions],
			[ess].[ID]
		FROM
			[VEMPLOYEE_SCH_SEC] [ess]
	) [t1]
WHERE
	[t1].[hasAdditionalPermissions] = 1 AND [t1].[hasAdditionalPermissions] IS NOT NULL

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [VEMPLOYEE_SCHDL_PERM]

BeforeExecute
-- SQLite.Classic.MPU SQLite.Classic SQLite

DROP TABLE IF EXISTS [VEMPLOYEE_SCH_SEC]

