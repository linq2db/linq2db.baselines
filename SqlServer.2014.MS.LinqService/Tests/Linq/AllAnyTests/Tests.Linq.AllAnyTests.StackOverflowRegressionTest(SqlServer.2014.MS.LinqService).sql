BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [_]
	), 1, 0)

