-- SqlServer.2025 SqlServer.2022

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Issue1982Table] [t1]
		WHERE
			[t1].[Time] < CAST([t1].[DateTime] AS Time)
	), 1, 0)

