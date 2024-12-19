BeforeExecute
-- SqlServer.2014

SELECT
	IIF(EXISTS(
		SELECT
			1
		FROM
			[Parent] [p]
	), 1, 0)

