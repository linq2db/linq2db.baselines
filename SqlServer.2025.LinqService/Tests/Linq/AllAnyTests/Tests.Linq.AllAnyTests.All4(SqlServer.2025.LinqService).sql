BeforeExecute
-- SqlServer.2025 SqlServer.2022 (asynchronously)

SELECT
	IIF(NOT EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			[c_1].[ParentID] <= 3
	), 1, 0)

