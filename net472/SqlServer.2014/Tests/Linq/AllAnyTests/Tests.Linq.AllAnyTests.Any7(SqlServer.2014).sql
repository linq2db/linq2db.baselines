BeforeExecute
-- SqlServer.2014 SqlServer.2012

SELECT
	IIF(EXISTS(
		SELECT
			*
		FROM
			[Child] [t1]
	), 1, 0)

