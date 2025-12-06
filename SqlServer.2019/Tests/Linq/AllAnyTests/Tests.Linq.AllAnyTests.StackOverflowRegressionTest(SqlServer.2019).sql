-- SqlServer.2019

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [t1]
	), 1, 0)

