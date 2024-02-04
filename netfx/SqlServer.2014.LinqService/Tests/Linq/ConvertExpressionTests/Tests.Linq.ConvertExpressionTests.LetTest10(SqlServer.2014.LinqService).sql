BeforeExecute
-- SqlServer.2014

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
	), 1, 0)

