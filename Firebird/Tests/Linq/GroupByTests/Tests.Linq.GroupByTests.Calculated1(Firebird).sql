﻿BeforeExecute
BeginTransaction
BeforeExecute
-- Firebird

SELECT
	"t1"."Key_1"
FROM
	(
		SELECT
			CASE
				WHEN "selectParam"."ParentID" > 2
					THEN CASE
					WHEN "selectParam"."ParentID" > 3
						THEN '1'
					ELSE '2'
				END
				ELSE '3'
			END as "Key_1"
		FROM
			"Child" "selectParam"
	) "t1"
GROUP BY
	"t1"."Key_1"

BeforeExecute
-- Firebird
DECLARE @p VarChar(1) -- String
SET     @p = '1'

SELECT
	"selectParam"."ParentID",
	"selectParam"."ChildID"
FROM
	"Child" "selectParam"
WHERE
	CASE
		WHEN "selectParam"."ParentID" > 2
			THEN CASE
			WHEN "selectParam"."ParentID" > 3
				THEN '1'
			ELSE '2'
		END
		ELSE '3'
	END = @p

