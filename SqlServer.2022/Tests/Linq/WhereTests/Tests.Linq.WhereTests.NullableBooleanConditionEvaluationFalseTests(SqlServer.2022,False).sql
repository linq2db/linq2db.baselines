BeforeExecute
-- SqlServer.2022

SELECT
	IIF(EXISTS(
		SELECT
			1
		FROM
			[Person] [t1]
	), 1, 0)

