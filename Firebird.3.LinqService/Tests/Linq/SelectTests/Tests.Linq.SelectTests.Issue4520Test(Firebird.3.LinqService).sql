﻿BeforeExecute
-- Firebird.3 Firebird3

SELECT
	CASE
		WHEN ("i"."BoolValue" = FALSE AND "i"."BoolValue" IS NOT NULL OR "i"."BoolValue" IS NULL OR CASE
			WHEN "i"."BoolValue" IS NOT NULL THEN "i"."BoolValue"
			ELSE FALSE
		END IS NULL) AND ("i"."IntValue" = (
			SELECT
				"p"."IntValue"
			FROM
				"LinqDataTypes" "p"
			WHERE
				"p".ID = 2
			FETCH NEXT 1 ROWS ONLY
		) OR "i"."IntValue" IS NULL AND (
			SELECT
				"p"."IntValue"
			FROM
				"LinqDataTypes" "p"
			WHERE
				"p".ID = 2
			FETCH NEXT 1 ROWS ONLY
		) IS NULL)
			THEN TRUE
		ELSE FALSE
	END
FROM
	"LinqDataTypes" "i"
WHERE
	"i".ID = 1

