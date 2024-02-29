BeforeExecute
-- SqlServer.2017

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [_]
	), 1, 0)

