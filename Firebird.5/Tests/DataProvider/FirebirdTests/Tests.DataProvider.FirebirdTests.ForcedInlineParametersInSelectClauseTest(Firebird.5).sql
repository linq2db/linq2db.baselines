BeforeExecute
-- Firebird.5 Firebird4

SELECT
	10
FROM rdb$database

BeforeExecute
-- Firebird.5 Firebird4
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

