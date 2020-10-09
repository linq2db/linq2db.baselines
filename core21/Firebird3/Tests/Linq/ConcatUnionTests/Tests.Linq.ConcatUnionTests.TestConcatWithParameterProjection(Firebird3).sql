BeforeExecute
-- Firebird3 Firebird
DECLARE @someValue Integer -- Int32
SET     @someValue = 3

SELECT 
	Cast(@someValue as Int), 
	"c_1"."ChildID"
FROM
	"Child" "c_1"
WHERE
	"c_1"."ChildID" <= Cast(@someValue as Int)
UNION ALL
SELECT 
	Cast(@someValue as Int), 
	"c_2"."ChildID"
FROM
	"Child" "c_2"
WHERE
	"c_2"."ChildID" > Cast(@someValue as Int)

