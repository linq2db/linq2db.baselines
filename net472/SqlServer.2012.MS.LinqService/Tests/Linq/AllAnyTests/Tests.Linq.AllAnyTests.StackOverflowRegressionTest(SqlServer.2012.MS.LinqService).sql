BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [_]
	), 1, 0)

