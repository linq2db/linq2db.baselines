BeforeExecute
-- Firebird3 Firebird

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
-- Firebird3 Firebird
DECLARE @p1 VarChar(1) -- String
SET     @p1 = '1'

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
	END = @p1

