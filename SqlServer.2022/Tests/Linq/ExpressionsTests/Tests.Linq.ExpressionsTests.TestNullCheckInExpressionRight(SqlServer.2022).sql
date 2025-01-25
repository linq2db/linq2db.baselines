BeforeExecute
-- SqlServer.2022

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [p]
		WHERE
			1 = 0
	), 1, 0)

