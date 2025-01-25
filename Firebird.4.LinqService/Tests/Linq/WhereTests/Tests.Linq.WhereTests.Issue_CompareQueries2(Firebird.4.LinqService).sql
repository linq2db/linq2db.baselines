BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."c1"
FROM
	(
		SELECT
			COUNT("rec".ID) as "c1"
		FROM
			(
				SELECT
					"p"."PersonID" as ID
				FROM
					"Person" "p"
				WHERE
					"p"."PersonID" IN (1, 2)
			) "rec"
		WHERE
			NOT EXISTS(
				SELECT
					*
				FROM
					"Person" "p_1"
				WHERE
					"p_1"."PersonID" IN (3) AND "rec".ID = "p_1"."PersonID"
			)
	) "t1"
FETCH NEXT 2 ROWS ONLY

BeforeExecute
-- Firebird.4 Firebird4

SELECT
	"t1"."c1"
FROM
	(
		SELECT
			COUNT("rec".ID) as "c1"
		FROM
			(
				SELECT
					"p"."PersonID" as ID
				FROM
					"Person" "p"
				WHERE
					"p"."PersonID" IN (3)
			) "rec"
		WHERE
			NOT EXISTS(
				SELECT
					*
				FROM
					"Person" "p_1"
				WHERE
					"p_1"."PersonID" IN (1, 2) AND "rec".ID = "p_1"."PersonID"
			)
	) "t1"
FETCH NEXT 2 ROWS ONLY

