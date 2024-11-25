BeforeExecute
-- SqlServer.2014.MS SqlServer.2014

SELECT
	IIF(EXISTS(
		SELECT
			1
		FROM
			[Child] [t1]
	), 1, 0)

