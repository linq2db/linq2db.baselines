BeforeExecute
-- SqlServer.2012

SELECT
	IIF(EXISTS(
		SELECT
			1
		FROM
			[Person] [t1]
		WHERE
			1 = 0
	), 1, 0)

