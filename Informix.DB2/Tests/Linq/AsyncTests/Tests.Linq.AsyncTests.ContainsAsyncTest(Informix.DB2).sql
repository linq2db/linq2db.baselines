BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @ID Integer(4) -- Int32
SET     @ID = 1

SELECT
	EXISTS(
		SELECT
			*
		FROM
			Person t1
		WHERE
			@ID::Int = t1.PersonID
	)
FROM table(set{1})

