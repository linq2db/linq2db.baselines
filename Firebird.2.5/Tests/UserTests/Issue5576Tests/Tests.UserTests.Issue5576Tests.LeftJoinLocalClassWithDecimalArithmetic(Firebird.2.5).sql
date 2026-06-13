-- Firebird.2.5 Firebird
DECLARE @Guid Guid
SET     @Guid = X'BC7B663D0FDE43278F925D8CC3A11D11'
DECLARE @Sold Integer -- Int32
SET     @Sold = 100

INSERT INTO "Campaign"
(
	"Guid",
	"Sold"
)
VALUES
(
	@Guid,
	@Sold
)

-- Firebird.2.5 Firebird
DECLARE @Guid Guid
SET     @Guid = X'A948600DDE214F748AC29516B287076E'
DECLARE @Sold Integer -- Int32
SET     @Sold = 40

INSERT INTO "Campaign"
(
	"Guid",
	"Sold"
)
VALUES
(
	@Guid,
	@Sold
)

-- Firebird.2.5 Firebird
DECLARE @Guid Guid
SET     @Guid = X'BD3973A543234DD89F4FDF9F93E2A627'
DECLARE @Sold Integer -- Int32
SET     @Sold = 200

INSERT INTO "Campaign"
(
	"Guid",
	"Sold"
)
VALUES
(
	@Guid,
	@Sold
)

-- Firebird.2.5 Firebird

SELECT
	"r"."Guid",
	"lc"."Count",
	CASE
		WHEN "lc"."Count" IS NOT NULL THEN (CAST("lc"."Count" AS Decimal(18, 10)) / "r"."Sold") * 100
		ELSE NULL
	END
FROM
	"Campaign" "r"
		LEFT JOIN (
			SELECT X'BC7B663D0FDE43278F925D8CC3A11D11' AS "Key", 5 AS "Count" FROM rdb$database
			UNION ALL
			SELECT X'A948600DDE214F748AC29516B287076E', 10 FROM rdb$database) "lc" ON "r"."Guid" = "lc"."Key"

