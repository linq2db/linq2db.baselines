BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Person"
(
	"FirstName",
	"LastName",
	"Gender"
)
VALUES
(
	'John',
	'Limonadovy',
	'M'
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	Count(*)
FROM
	"Person" "c_1"
WHERE
	"c_1"."LastName" = 'Limonadovy'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

UPDATE
	"Person"
SET
	"Person"."FirstName" = 'Johnny'
WHERE
	"Person"."LastName" = 'Limonadovy'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT 
	Count(*)
FROM
	"Person" "c_1"
WHERE
	"c_1"."FirstName" = 'Johnny' AND "c_1"."LastName" = 'Limonadovy'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Person" "t1"
WHERE
	"t1"."LastName" = 'Limonadovy'

