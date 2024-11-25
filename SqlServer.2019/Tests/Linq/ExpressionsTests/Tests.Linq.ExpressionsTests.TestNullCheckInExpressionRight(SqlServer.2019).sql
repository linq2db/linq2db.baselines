BeforeExecute
-- SqlServer.2019

SELECT
	IIF(EXISTS(
		SELECT
			1
		FROM
			[Person] [p]
		WHERE
			1 = 0
	), 1, 0)

