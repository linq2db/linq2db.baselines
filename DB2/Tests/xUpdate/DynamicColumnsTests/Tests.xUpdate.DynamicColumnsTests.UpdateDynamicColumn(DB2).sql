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
	COUNT(*)
FROM
	"Person" "c_1"
WHERE
	"c_1"."LastName" = 'Limonadovy'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

UPDATE
	"Person" "c_1"
SET
	"FirstName" = 'Johnny'
WHERE
	"c_1"."LastName" = 'Limonadovy'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	COUNT(*)
FROM
	"Person" "c_1"
WHERE
	"c_1"."FirstName" = 'Johnny' AND "c_1"."LastName" = 'Limonadovy'

