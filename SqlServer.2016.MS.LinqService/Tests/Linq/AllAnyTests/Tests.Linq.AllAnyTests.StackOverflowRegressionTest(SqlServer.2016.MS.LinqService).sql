BeforeExecute
-- SqlServer.2016.MS SqlServer.2016

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [t1]
	), 1, 0)

