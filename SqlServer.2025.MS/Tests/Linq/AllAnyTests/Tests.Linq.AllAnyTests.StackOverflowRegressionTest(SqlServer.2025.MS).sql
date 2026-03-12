-- SqlServer.2025.MS SqlServer.2025

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [t1]
	), 1, 0)

