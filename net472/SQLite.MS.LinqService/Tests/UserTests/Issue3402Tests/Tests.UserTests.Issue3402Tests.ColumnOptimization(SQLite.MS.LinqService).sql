BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [VEMPLOYEE_SCH_SEC]
(
	[ACTIVE] Bit           NOT NULL,
	[ID]     INTEGER       NOT NULL,
	[NAME]   NVarChar(255) NOT NULL,

	CONSTRAINT [PK_VEMPLOYEE_SCH_SEC] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.MS SQLite

CREATE TABLE [VEMPLOYEE_SCHDL_PERM]
(
	[ID]        INTEGER NOT NULL,
	[IS_ACTIVE] Bit     NOT NULL,

	CONSTRAINT [PK_VEMPLOYEE_SCHDL_PERM] PRIMARY KEY ([ID])
)

BeforeExecute
-- SQLite.MS SQLite

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
			END as [allowEdit],
			[ess].[ID]
		FROM
			[VEMPLOYEE_SCH_SEC] [ess]
	) [t1]
WHERE
	[t1].[allowEdit] = 1 AND [t1].[allowEdit] IS NOT NULL

BeforeExecute
-- SQLite.MS SQLite

SELECT
	[t1].[ID]
FROM
	(
		SELECT
			1 as [allowEdit],
			[ess].[ID]
		FROM
			[VEMPLOYEE_SCH_SEC] [ess]
	) [t1]
WHERE
	[t1].[allowEdit] = 1

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [VEMPLOYEE_SCHDL_PERM]

BeforeExecute
-- SQLite.MS SQLite

DROP TABLE IF EXISTS [VEMPLOYEE_SCH_SEC]

