BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "InfeedAdvicePositionDTO"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "InfeedAdvicePositionDTO"
		(
			"Id" char(16) for bit data NOT NULL
		)
	';
END

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
	(substr(hex("infeed"."Id"), 7, 2) || substr(hex("infeed"."Id"), 5, 2) || substr(hex("infeed"."Id"), 3, 2) || substr(hex("infeed"."Id"), 1, 2) || '-' || substr(hex("infeed"."Id"), 11, 2) || substr(hex("infeed"."Id"), 9, 2) || '-' || substr(hex("infeed"."Id"), 15, 2) || substr(hex("infeed"."Id"), 13, 2) || '-' || substr(hex("infeed"."Id"), 17, 4) || '-' || substr(hex("infeed"."Id"), 21, 12))
FROM
	"InfeedAdvicePositionDTO" "infeed"
FETCH FIRST 1 ROWS ONLY

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"infeed"."Id"
FROM
	"InfeedAdvicePositionDTO" "infeed"
WHERE
	(substr(hex("infeed"."Id"), 7, 2) || substr(hex("infeed"."Id"), 5, 2) || substr(hex("infeed"."Id"), 3, 2) || substr(hex("infeed"."Id"), 1, 2) || '-' || substr(hex("infeed"."Id"), 11, 2) || substr(hex("infeed"."Id"), 9, 2) || '-' || substr(hex("infeed"."Id"), 15, 2) || substr(hex("infeed"."Id"), 13, 2) || '-' || substr(hex("infeed"."Id"), 17, 4) || '-' || substr(hex("infeed"."Id"), 21, 12)) LIKE '%7F4-53%' ESCAPE '~'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"infeed"."Id"
FROM
	"InfeedAdvicePositionDTO" "infeed"
WHERE
	(substr(hex("infeed"."Id"), 7, 2) || substr(hex("infeed"."Id"), 5, 2) || substr(hex("infeed"."Id"), 3, 2) || substr(hex("infeed"."Id"), 1, 2) || '-' || substr(hex("infeed"."Id"), 11, 2) || substr(hex("infeed"."Id"), 9, 2) || '-' || substr(hex("infeed"."Id"), 15, 2) || substr(hex("infeed"."Id"), 13, 2) || '-' || substr(hex("infeed"."Id"), 17, 4) || '-' || substr(hex("infeed"."Id"), 21, 12)) LIKE '193AE%' ESCAPE '~'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"infeed"."Id"
FROM
	"InfeedAdvicePositionDTO" "infeed"
WHERE
	(substr(hex("infeed"."Id"), 7, 2) || substr(hex("infeed"."Id"), 5, 2) || substr(hex("infeed"."Id"), 3, 2) || substr(hex("infeed"."Id"), 1, 2) || '-' || substr(hex("infeed"."Id"), 11, 2) || substr(hex("infeed"."Id"), 9, 2) || '-' || substr(hex("infeed"."Id"), 15, 2) || substr(hex("infeed"."Id"), 13, 2) || '-' || substr(hex("infeed"."Id"), 17, 4) || '-' || substr(hex("infeed"."Id"), 21, 12)) LIKE '%8F4-53%' ESCAPE '~'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

SELECT
	"infeed"."Id"
FROM
	"InfeedAdvicePositionDTO" "infeed"
WHERE
	Lower((substr(hex("infeed"."Id"), 7, 2) || substr(hex("infeed"."Id"), 5, 2) || substr(hex("infeed"."Id"), 3, 2) || substr(hex("infeed"."Id"), 1, 2) || '-' || substr(hex("infeed"."Id"), 11, 2) || substr(hex("infeed"."Id"), 9, 2) || '-' || substr(hex("infeed"."Id"), 15, 2) || substr(hex("infeed"."Id"), 13, 2) || '-' || substr(hex("infeed"."Id"), 17, 4) || '-' || substr(hex("infeed"."Id"), 21, 12))) LIKE '293AE%' ESCAPE '~'

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "InfeedAdvicePositionDTO"';
END

