BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [p]
		WHERE
			1 = 0
	), 1, 0)

