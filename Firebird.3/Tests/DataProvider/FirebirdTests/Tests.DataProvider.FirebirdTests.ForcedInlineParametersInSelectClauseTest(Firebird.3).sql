BeforeExecute
-- Firebird.3 Firebird3

SELECT
	10
FROM rdb$database

BeforeExecute
-- Firebird.3 Firebird3
DECLARE @blob Binary(3)
SET     @blob = X'010203'

SELECT
	EXISTS(
		SELECT
			*
		FROM
			"LinqDataTypes" "x"
		WHERE
			"x"."BinaryValue" = @blob
	)
FROM rdb$database

