BeforeExecute
-- SqlServer.2012.MS SqlServer.2012

SELECT
	IIF(EXISTS(
		SELECT
			1
		FROM
			[Child] [t1]
	), 1, 0)

