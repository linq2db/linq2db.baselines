BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"m_1"."Key_1",
	"d"."FirstName",
	"d"."PersonID",
	"d"."LastName",
	"d"."MiddleName",
	"d"."Gender"
FROM
	(
		SELECT DISTINCT
			"t2"."Key_1"
		FROM
			(
				SELECT
					"t1"."PersonID" as "Key_1"
				FROM
					"Person" "t1"
				GROUP BY
					"t1"."PersonID"
			) "t2"
	) "m_1"
		INNER JOIN "Person" "d" ON "m_1"."Key_1" = "d"."PersonID"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."PersonID"
FROM
	"Person" "t1"
GROUP BY
	"t1"."PersonID"

BeforeExecute
BeginTransaction(RepeatableRead)
BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"m_1"."Key_1",
	"d"."FirstName",
	"d"."PersonID",
	"d"."LastName",
	"d"."MiddleName",
	"d"."Gender"
FROM
	(
		SELECT DISTINCT
			"t2"."Key_1"
		FROM
			(
				SELECT
					"t1"."PersonID" as "Key_1"
				FROM
					"Person" "t1"
				GROUP BY
					"t1"."PersonID"
			) "t2"
	) "m_1"
		INNER JOIN "Person" "d" ON "m_1"."Key_1" = "d"."PersonID"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."PersonID"
FROM
	"Person" "t1"
GROUP BY
	"t1"."PersonID"

