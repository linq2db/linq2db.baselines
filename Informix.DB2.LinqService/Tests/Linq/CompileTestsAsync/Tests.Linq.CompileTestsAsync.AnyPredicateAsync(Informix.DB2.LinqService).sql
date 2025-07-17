BeforeExecute
-- Informix.DB2 Informix (asynchronously)
DECLARE @p Integer(4) -- Int32
SET     @p = 2

SELECT
	EXISTS(
		SELECT
			*
		FROM
			AsyncDataTable c_1
		WHERE
			c_1.Id = @p
	)
FROM table(set{1})

