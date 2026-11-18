-- DB2 DB2.LUW DB2LUW
DECLARE @Id Integer(4) -- Int32
SET     @Id = 1
DECLARE @Span BigInt(8) -- Int64
SET     @Span = 5400

INSERT INTO "ScaledRow"
(
	"Id",
	"Span"
)
VALUES
(
	@Id,
	@Span
)

-- DB2 DB2.LUW DB2LUW
SELECT
	"t1"."Source",
	"t1"."Span"
FROM
	(
		SELECT
			CAST(1 AS Int) as "Source",
			"r"."Span"
		FROM
			"ScaledRow" "r"
		UNION ALL
		SELECT
			CAST(2 AS Int) as "Source",
			"r_1"."Span"
		FROM
			"ScaledRow" "r_1"
	) "t1"
ORDER BY
	"t1"."Source"

