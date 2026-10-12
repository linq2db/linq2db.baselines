-- DB2 DB2.LUW DB2LUW
DECLARE @p VarChar(1) -- String
SET     @p = 'X'
DECLARE @p_1 Integer(4) -- Int32
SET     @p_1 = 1

SELECT
	"p"."PersonID"
FROM
	"Person" "p"
WHERE
	"p"."PersonID" IN (
		SELECT
			"x"."PersonID"
		FROM
			(
				SELECT * FROM "Person" WHERE "PersonID" = @p_1 AND "LastName" <> @p
			) "x"
	)

