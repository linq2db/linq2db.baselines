BeforeExecute
-- SqlServer.2017.MS SqlServer.2017

SELECT
	IIF(EXISTS(
		SELECT
			1
		FROM
			[Parent] [p]
	), 1, 0)

