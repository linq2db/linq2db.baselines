-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Guid Raw(16) -- Binary
SET     @Guid = HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11')
DECLARE @Sold Int32
SET     @Sold = 100

INSERT INTO "Campaign"
(
	"Guid",
	"Sold"
)
VALUES
(
	:Guid,
	:Sold
)

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Guid Raw(16) -- Binary
SET     @Guid = HEXTORAW('0D6048A921DE744F8AC29516B287076E')
DECLARE @Sold Int32
SET     @Sold = 40

INSERT INTO "Campaign"
(
	"Guid",
	"Sold"
)
VALUES
(
	:Guid,
	:Sold
)

-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @Guid Raw(16) -- Binary
SET     @Guid = HEXTORAW('A57339BD2343D84D9F4FDF9F93E2A627')
DECLARE @Sold Int32
SET     @Sold = 200

INSERT INTO "Campaign"
(
	"Guid",
	"Sold"
)
VALUES
(
	:Guid,
	:Sold
)

-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	r."Guid",
	lc."Count",
	CASE
		WHEN lc."Count" IS NOT NULL THEN (CAST(lc."Count" AS Decimal(28, 10)) / r."Sold") * 100
		ELSE NULL
	END
FROM
	"Campaign" r
		LEFT JOIN (
			SELECT HEXTORAW('3D667BBCDE0F27438F925D8CC3A11D11') AS "Key", 5 AS "Count" FROM sys.dual
			UNION ALL
			SELECT HEXTORAW('0D6048A921DE744F8AC29516B287076E'), 10 FROM sys.dual) lc ON r."Guid" = lc."Key"

