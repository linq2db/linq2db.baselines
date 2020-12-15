BeforeExecute
-- SqlServer.2017

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
	), 1, 0)

