BeforeExecute
-- SqlServer.2016.MS SqlServer.2016 (asynchronously)

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [t1]
	), 1, 0)

