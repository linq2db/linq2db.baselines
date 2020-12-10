BeforeExecute
-- Firebird3 Firebird

SELECT
	10
FROM rdb$database

BeforeExecute
-- Firebird3 Firebird
DECLARE @blob_1 Binary(3)
SET     @blob_1 = X'010203'

SELECT
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"LinqDataTypes" "x"
			WHERE
				"x"."BinaryValue" = @blob_1
		)
			THEN 1
		ELSE 0
	END
FROM rdb$database

