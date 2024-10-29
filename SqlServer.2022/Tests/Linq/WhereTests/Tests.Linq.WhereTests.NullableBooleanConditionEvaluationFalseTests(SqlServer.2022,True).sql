BeforeExecute
-- SqlServer.2022

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [t1]
		WHERE
			1 = 0
	), 1, 0)

