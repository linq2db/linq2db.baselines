BeforeExecute
-- SqlServer.2022

SELECT
	IIF(EXISTS(
		SELECT
			1
		FROM
			[Parent] [p]
	), 1, 0)

