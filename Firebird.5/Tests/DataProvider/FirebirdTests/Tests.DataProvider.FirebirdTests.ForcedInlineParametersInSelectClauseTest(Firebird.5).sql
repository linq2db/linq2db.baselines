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
	CASE
		WHEN EXISTS(
			SELECT
				*
			FROM
				"LinqDataTypes" "x"
			WHERE
				"x"."BinaryValue" = @blob AND "x"."BinaryValue" IS NOT NULL
		)
			THEN TRUE
		ELSE FALSE
	END
FROM rdb$database

