BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"m_1"."FirstName",
	"d"."FirstName",
	"d"."PersonID",
	"d"."LastName",
	"d"."MiddleName",
	"d"."Gender"
FROM
	(
		SELECT DISTINCT
			"_"."FirstName"
		FROM
			"Person" "_"
	) "m_1"
		INNER JOIN "Person" "d" ON "m_1"."FirstName" = "d"."FirstName"

BeforeExecute
DisposeTransaction
BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"_"."FirstName"
FROM
	"Person" "_"
GROUP BY
	"_"."FirstName"

