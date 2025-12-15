-- SqlServer.2014

SELECT
	[ess].[ID]
FROM
	[VEMPLOYEE_SCH_SEC] [ess]
WHERE
	EXISTS(
		SELECT
			*
		FROM
			[VEMPLOYEE_SCHDL_PERM] [y]
		WHERE
			[ess].[ID] = [y].[ID] AND [y].[IS_ACTIVE] = 1
	)

-- SqlServer.2014

SELECT
	[ess].[ID]
FROM
	[VEMPLOYEE_SCH_SEC] [ess]

