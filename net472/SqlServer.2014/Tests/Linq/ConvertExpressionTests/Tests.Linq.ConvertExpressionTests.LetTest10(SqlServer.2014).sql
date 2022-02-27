BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Parent] [p]
	), 1, 0)

