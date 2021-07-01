BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [_]
	), 1, 0)

