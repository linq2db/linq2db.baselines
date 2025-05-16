BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @name Integer(4) -- Int32
SET     @name = 8
DECLARE @idx Integer(4) -- Int32
SET     @idx = 4

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'Insert16',
	RTrim(Char(CAST(@name AS Int) + CAST(@idx AS Int))),
	'M'
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" LIKE 'Insert16%' ESCAPE '~'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."FirstName" LIKE 'Insert16%' ESCAPE '~'

