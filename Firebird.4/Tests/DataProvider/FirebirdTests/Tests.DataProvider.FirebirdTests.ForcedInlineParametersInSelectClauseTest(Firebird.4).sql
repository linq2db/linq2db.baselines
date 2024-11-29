BeforeExecute
-- Firebird.4 Firebird4

SELECT
	10
FROM rdb$database

BeforeExecute
-- Firebird.4 Firebird4
DECLARE @blob Binary(3)
SET     @blob = X'010203'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				1
			FROM
				"LinqDataTypes" "x"
			WHERE
				"x"."BinaryValue" = @blob
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

