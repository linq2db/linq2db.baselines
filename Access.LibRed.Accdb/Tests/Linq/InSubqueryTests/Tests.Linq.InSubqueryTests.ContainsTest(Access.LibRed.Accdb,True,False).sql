-- Access.LibRed.Accdb Access.LibRed AccessLibRed
SELECT
	EXISTS(
		SELECT
			*
		FROM
			[Child] [c_1]
		WHERE
			1 = [c_1].[ParentID]
	)

