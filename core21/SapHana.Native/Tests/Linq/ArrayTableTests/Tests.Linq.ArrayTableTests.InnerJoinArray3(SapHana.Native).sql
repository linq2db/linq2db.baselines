BeforeExecute
-- SapHana.Native SapHana

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
		INNER JOIN (
			SELECT
				'Janet' as "c1"
FROM DUMMY
			UNION ALL
			SELECT
				'Doe' as "c1"
FROM DUMMY
			UNION ALL
			SELECT
				'John' as "c1"
FROM DUMMY
			UNION ALL
			SELECT
				'Doe' as "c1"
FROM DUMMY
		) "t1" ON "p"."LastName" = "t1"."c1"

BeforeExecute
-- SapHana.Native SapHana

SELECT
	"p"."FirstName",
	"p"."PersonID",
	"p"."LastName",
	"p"."MiddleName",
	"p"."Gender"
FROM
	"Person" "p"
		INNER JOIN (
			SELECT
				'Janet' as "c1"
FROM DUMMY
			UNION ALL
			SELECT
				'Doe' as "c1"
FROM DUMMY
			UNION ALL
			SELECT
				'John' as "c1"
FROM DUMMY
			UNION ALL
			SELECT
				'Doe1' as "c1"
FROM DUMMY
		) "t1" ON "p"."LastName" = "t1"."c1"

