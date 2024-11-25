BeforeExecute
-- SqlServer.2008.MS SqlServer.2008

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				[Child] [t1]
		)
			THEN 1
		ELSE 0
	END

