BeforeExecute
-- Firebird
DECLARE @Length_2 Integer -- Int32
SET     @Length_2 = 9

SELECT
	"p_1".ID,
	"p_1"."FirstName_1"
FROM
	(
		SELECT
			'123' || "p"."FirstName" || '0123451234' as "FirstName",
			"p"."PersonID" as ID,
			"p"."FirstName" as "FirstName_1"
		FROM
			"Person" "p"
		WHERE
			"p"."PersonID" = 1
	) "p_1"
WHERE
	CASE
		WHEN Position('123', Left("p_1"."FirstName", 11), 6) = 0
			THEN -1
		ELSE @Length_2 - Position('321', Reverse(Substring("p_1"."FirstName" from 6 for 6)))
	END = 8

