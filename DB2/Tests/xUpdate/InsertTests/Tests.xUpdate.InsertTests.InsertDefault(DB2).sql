BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Person"
(
	"FirstName",
	"MiddleName",
	"LastName",
	"Gender"
)
VALUES
(
	'InsertDefault',
	DEFAULT,
	'InsertDefault',
	'M'
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

DELETE FROM
	"Person" "p"
WHERE
	"p"."FirstName" = 'InsertDefault'

