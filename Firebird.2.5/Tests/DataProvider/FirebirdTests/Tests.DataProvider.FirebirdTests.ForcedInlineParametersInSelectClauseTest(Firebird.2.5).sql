BeforeExecute
-- Firebird.2.5 Firebird

SELECT
	10
FROM rdb$database

BeforeExecute
-- Firebird.2.5 Firebird
DECLARE @blob Binary(3)
SET     @blob = X'010203'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"LinqDataTypes" "x"
			WHERE
				"x"."BinaryValue" = @blob
		)
			THEN '1'
		ELSE '0'
	END
FROM rdb$database

