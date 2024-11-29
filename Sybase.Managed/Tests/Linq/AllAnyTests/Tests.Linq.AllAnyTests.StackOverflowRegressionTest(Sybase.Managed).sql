BeforeExecute
-- Sybase.Managed Sybase

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				[Person] [t1]
		)
			THEN 1
		ELSE 0
	END

