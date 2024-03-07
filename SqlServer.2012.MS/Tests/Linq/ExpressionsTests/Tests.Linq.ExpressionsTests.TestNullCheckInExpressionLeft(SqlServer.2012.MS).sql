BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [p]
		WHERE
			1 = 0
	), 1, 0)

