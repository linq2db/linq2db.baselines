BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Value Integer(4) -- Int32
SET     @Value = 10

SELECT
	ID
FROM
	NEW TABLE
	(
		INSERT INTO "Issue681Table4"
		(
			"Value"
		)
		VALUES
		(
			@Value
		)
	)

