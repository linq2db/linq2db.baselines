-- Access.LibRed.Mdb Access.LibRed AccessLibRed
DECLARE @ID  -- Int32
SET     @ID = 1

SELECT
	CASE
		WHEN CVar(@ID) IN (
			SELECT
				[t1].[PersonID]
			FROM
				[Person] [t1]
		)
			THEN True
		ELSE False
	END

