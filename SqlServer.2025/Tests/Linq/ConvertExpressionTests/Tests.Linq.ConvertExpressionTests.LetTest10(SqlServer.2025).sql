-- SqlServer.2025

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
	), 1, 0)

