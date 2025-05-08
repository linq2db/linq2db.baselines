BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"x"."position"
FROM
	"entities" "x"
WHERE
	EXISTS(
		SELECT
			*
		FROM
			(VALUES
				(-10,-10,10)
			) "t"(X, X0, Y)
		WHERE
			"x"."position".x > "t".X
	)
FETCH NEXT 3 ROWS ONLY

