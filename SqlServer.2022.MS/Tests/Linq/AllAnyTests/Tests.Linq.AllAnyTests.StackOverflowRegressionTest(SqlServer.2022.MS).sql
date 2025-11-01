-- SqlServer.2022.MS SqlServer.2022

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [t1]
	), 1, 0)

