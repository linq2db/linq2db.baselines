BeforeExecute
-- SqlServer.2022.MS SqlServer.2022

SELECT
	IIF(EXISTS(
		SELECT
			1
		FROM
			[Child] [t1]
	), 1, 0)

