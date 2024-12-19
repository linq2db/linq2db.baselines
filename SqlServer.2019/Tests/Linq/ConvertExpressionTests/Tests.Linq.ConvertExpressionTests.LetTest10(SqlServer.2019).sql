BeforeExecute
-- SqlServer.2019

SELECT
	IIF(EXISTS(
		SELECT
			1
		FROM
			[Parent] [p]
	), 1, 0)

