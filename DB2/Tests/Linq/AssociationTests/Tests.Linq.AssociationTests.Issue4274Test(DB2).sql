-- DB2 DB2.LUW DB2LUW

SELECT
	"serv"."PersonID"
FROM
	"Patient" "serv"
		INNER JOIN "Person" "a_Person" ON "serv"."PersonID" = "a_Person"."PersonID"
WHERE
	"a_Person"."PersonID" = 1

