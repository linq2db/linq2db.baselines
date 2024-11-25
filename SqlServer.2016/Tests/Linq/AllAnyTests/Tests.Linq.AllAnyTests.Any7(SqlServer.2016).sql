BeforeExecute
-- SqlServer.2016

SELECT
	IIF(EXISTS(
		SELECT
			1
		FROM
			[Child] [t1]
	), 1, 0)

