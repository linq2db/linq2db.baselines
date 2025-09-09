BeforeExecute
-- SqlServer.2019.MS SqlServer.2019 (asynchronously)

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Person] [t1]
	), 1, 0)

