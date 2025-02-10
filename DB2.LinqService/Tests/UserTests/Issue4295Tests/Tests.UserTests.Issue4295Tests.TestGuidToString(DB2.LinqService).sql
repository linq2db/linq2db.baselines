BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Id VarBinary(16) -- Binary
SET     @Id = BX'F4E73A190953EE4EA74627B28C7E30F3'

INSERT INTO "InfeedAdvicePositionDTO"
(
	"Id"
)
VALUES
(
	@Id
)

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	lower((substr(hex("infeed"."Id"), 7, 2) || substr(hex("infeed"."Id"), 5, 2) || substr(hex("infeed"."Id"), 3, 2) || substr(hex("infeed"."Id"), 1, 2) || '-' || substr(hex("infeed"."Id"), 11, 2) || substr(hex("infeed"."Id"), 9, 2) || '-' || substr(hex("infeed"."Id"), 15, 2) || substr(hex("infeed"."Id"), 13, 2) || '-' || substr(hex("infeed"."Id"), 17, 4) || '-' || substr(hex("infeed"."Id"), 21, 12)))
FROM
	"InfeedAdvicePositionDTO" "infeed"
FETCH NEXT 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"infeed"."Id"
FROM
	"InfeedAdvicePositionDTO" "infeed"
WHERE
	lower((substr(hex("infeed"."Id"), 7, 2) || substr(hex("infeed"."Id"), 5, 2) || substr(hex("infeed"."Id"), 3, 2) || substr(hex("infeed"."Id"), 1, 2) || '-' || substr(hex("infeed"."Id"), 11, 2) || substr(hex("infeed"."Id"), 9, 2) || '-' || substr(hex("infeed"."Id"), 15, 2) || substr(hex("infeed"."Id"), 13, 2) || '-' || substr(hex("infeed"."Id"), 17, 4) || '-' || substr(hex("infeed"."Id"), 21, 12))) LIKE '%7f4-53%' ESCAPE '~'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"infeed"."Id"
FROM
	"InfeedAdvicePositionDTO" "infeed"
WHERE
	lower((substr(hex("infeed"."Id"), 7, 2) || substr(hex("infeed"."Id"), 5, 2) || substr(hex("infeed"."Id"), 3, 2) || substr(hex("infeed"."Id"), 1, 2) || '-' || substr(hex("infeed"."Id"), 11, 2) || substr(hex("infeed"."Id"), 9, 2) || '-' || substr(hex("infeed"."Id"), 15, 2) || substr(hex("infeed"."Id"), 13, 2) || '-' || substr(hex("infeed"."Id"), 17, 4) || '-' || substr(hex("infeed"."Id"), 21, 12))) LIKE '193ae%' ESCAPE '~'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"infeed"."Id"
FROM
	"InfeedAdvicePositionDTO" "infeed"
WHERE
	lower((substr(hex("infeed"."Id"), 7, 2) || substr(hex("infeed"."Id"), 5, 2) || substr(hex("infeed"."Id"), 3, 2) || substr(hex("infeed"."Id"), 1, 2) || '-' || substr(hex("infeed"."Id"), 11, 2) || substr(hex("infeed"."Id"), 9, 2) || '-' || substr(hex("infeed"."Id"), 15, 2) || substr(hex("infeed"."Id"), 13, 2) || '-' || substr(hex("infeed"."Id"), 17, 4) || '-' || substr(hex("infeed"."Id"), 21, 12))) LIKE '%8f4-53%' ESCAPE '~'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"infeed"."Id"
FROM
	"InfeedAdvicePositionDTO" "infeed"
WHERE
	Lower(lower((substr(hex("infeed"."Id"), 7, 2) || substr(hex("infeed"."Id"), 5, 2) || substr(hex("infeed"."Id"), 3, 2) || substr(hex("infeed"."Id"), 1, 2) || '-' || substr(hex("infeed"."Id"), 11, 2) || substr(hex("infeed"."Id"), 9, 2) || '-' || substr(hex("infeed"."Id"), 15, 2) || substr(hex("infeed"."Id"), 13, 2) || '-' || substr(hex("infeed"."Id"), 17, 4) || '-' || substr(hex("infeed"."Id"), 21, 12)))) LIKE '293ae%' ESCAPE '~'

