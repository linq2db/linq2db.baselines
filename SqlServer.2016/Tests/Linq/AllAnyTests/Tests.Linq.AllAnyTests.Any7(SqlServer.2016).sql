-- SqlServer.2016

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [t1]
	), 1, 0)

