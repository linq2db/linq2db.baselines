BeforeExecute
-- SqlServer.2008

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				[Person] [t1]
			WHERE
				1 = 0
		)
			THEN 1
		ELSE 0
	END

