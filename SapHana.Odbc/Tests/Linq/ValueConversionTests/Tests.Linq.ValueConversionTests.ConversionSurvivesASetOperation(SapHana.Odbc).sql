-- SapHana.Odbc SapHanaOdbc
DECLARE @Id Int -- Int32
SET     @Id = 1
DECLARE @Span BigInt -- Int64
SET     @Span = 5400

INSERT INTO "ScaledRow"
(
	"Id",
	"Span"
)
VALUES
(
	?,
	?
)

-- SapHana.Odbc SapHanaOdbc
SELECT
	"t1"."Source",
	"t1"."Span"
FROM
	(
		SELECT
			CAST(1 AS Integer) as "Source",
			"r"."Span"
		FROM
			"ScaledRow" "r"
		UNION ALL
		SELECT
			CAST(2 AS Integer) as "Source",
			"r_1"."Span"
		FROM
			"ScaledRow" "r_1"
	) "t1"
ORDER BY
	"t1"."Source"

