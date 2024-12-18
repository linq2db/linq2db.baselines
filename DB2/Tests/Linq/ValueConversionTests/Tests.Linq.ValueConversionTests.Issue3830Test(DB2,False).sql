BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3830TestTable"';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42710' BEGIN END;
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue3830TestTable"
		(
			"Id"    Int     NOT NULL,
			"Bool1" Char(1) NOT NULL,
			"Bool2" Char(1)     NULL,
			"Bool3" Char(1)     NULL
		)
	';
END

BeforeExecute
-- DB2 DB2.LUW DB2LUW

INSERT INTO "Issue3830TestTable"
(
	"Id",
	"Bool1",
	"Bool2",
	"Bool3"
)
VALUES
(1,'Y',NULL,NULL),
(2,'N',NULL,'Y'),
(3,'N','Y',NULL),
(4,'Y','N','Y')

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Bool1 Char(1) -- StringFixedLength
SET     @Bool1 = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool1" = @Bool1 AND "r"."Bool2" IS NULL AND "r"."Bool3" IS NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @true_value Char(1) -- StringFixedLength
SET     @true_value = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool1" = @true_value AND "r"."Bool2" IS NULL AND
	"r"."Bool3" IS NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Bool1 Char(1) -- StringFixedLength
SET     @Bool1 = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	("r"."Bool3" IS NULL OR "r"."Bool3" IS NULL) AND "r"."Bool1" = @Bool1 AND
	"r"."Bool2" IS NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Bool1 Char(1) -- StringFixedLength
SET     @Bool1 = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool2" IS NULL AND "r"."Bool1" = @Bool1 AND "r"."Bool3" IS NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Bool1 Char(1) -- StringFixedLength
SET     @Bool1 = 'N'
DECLARE @Bool3 Char(1) -- StringFixedLength
SET     @Bool3 = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool1" = @Bool1 AND
	"r"."Bool2" IS NULL AND
	"r"."Bool3" = @Bool3 AND
	"r"."Bool3" IS NOT NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @true_value Char(1) -- StringFixedLength
SET     @true_value = 'Y'
DECLARE @Bool1 Char(1) -- StringFixedLength
SET     @Bool1 = 'N'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool3" = @true_value AND "r"."Bool1" = @Bool1 AND
	"r"."Bool2" IS NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @false_value Char(1) -- StringFixedLength
SET     @false_value = 'N'
DECLARE @Bool3 Char(1) -- StringFixedLength
SET     @Bool3 = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool1" = @false_value AND
	"r"."Bool2" IS NULL AND
	"r"."Bool3" = @Bool3 AND
	"r"."Bool3" IS NOT NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Bool1 Char(1) -- StringFixedLength
SET     @Bool1 = 'N'
DECLARE @Bool3 Char(1) -- StringFixedLength
SET     @Bool3 = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool2" IS NULL AND
	"r"."Bool1" = @Bool1 AND
	"r"."Bool3" = @Bool3 AND
	"r"."Bool3" IS NOT NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Bool1 Char(1) -- StringFixedLength
SET     @Bool1 = 'N'
DECLARE @Bool2 Char(1) -- StringFixedLength
SET     @Bool2 = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool1" = @Bool1 AND
	"r"."Bool2" = @Bool2 AND
	"r"."Bool2" IS NOT NULL AND
	"r"."Bool3" IS NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @false_value Char(1) -- StringFixedLength
SET     @false_value = 'N'
DECLARE @Bool2 Char(1) -- StringFixedLength
SET     @Bool2 = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool1" = @false_value AND
	"r"."Bool2" = @Bool2 AND
	"r"."Bool2" IS NOT NULL AND
	"r"."Bool3" IS NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Bool1 Char(1) -- StringFixedLength
SET     @Bool1 = 'N'
DECLARE @Bool2 Char(1) -- StringFixedLength
SET     @Bool2 = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	("r"."Bool3" IS NULL OR "r"."Bool3" IS NULL) AND
	"r"."Bool1" = @Bool1 AND
	"r"."Bool2" = @Bool2 AND
	"r"."Bool2" IS NOT NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Bool1 Char(1) -- StringFixedLength
SET     @Bool1 = 'N'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool2" IS NOT NULL AND "r"."Bool1" = @Bool1 AND
	"r"."Bool3" IS NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Bool1 Char(1) -- StringFixedLength
SET     @Bool1 = 'Y'
DECLARE @Bool2 Char(1) -- StringFixedLength
SET     @Bool2 = 'N'
DECLARE @Bool3 Char(1) -- StringFixedLength
SET     @Bool3 = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool1" = @Bool1 AND
	"r"."Bool2" = @Bool2 AND
	"r"."Bool2" IS NOT NULL AND
	"r"."Bool3" = @Bool3 AND
	"r"."Bool3" IS NOT NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @true_value Char(1) -- StringFixedLength
SET     @true_value = 'Y'
DECLARE @Bool2 Char(1) -- StringFixedLength
SET     @Bool2 = 'N'
DECLARE @Bool3 Char(1) -- StringFixedLength
SET     @Bool3 = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool1" = @true_value AND
	"r"."Bool2" = @Bool2 AND
	"r"."Bool2" IS NOT NULL AND
	"r"."Bool3" = @Bool3 AND
	"r"."Bool3" IS NOT NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @true_value Char(1) -- StringFixedLength
SET     @true_value = 'Y'
DECLARE @Bool1 Char(1) -- StringFixedLength
SET     @Bool1 = 'Y'
DECLARE @Bool2 Char(1) -- StringFixedLength
SET     @Bool2 = 'N'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool3" = @true_value AND
	"r"."Bool1" = @Bool1 AND
	"r"."Bool2" = @Bool2 AND
	"r"."Bool2" IS NOT NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW
DECLARE @Bool1 Char(1) -- StringFixedLength
SET     @Bool1 = 'Y'
DECLARE @Bool3 Char(1) -- StringFixedLength
SET     @Bool3 = 'Y'

SELECT
	"r"."Id",
	"r"."Bool1",
	"r"."Bool2",
	"r"."Bool3"
FROM
	"Issue3830TestTable" "r"
WHERE
	"r"."Bool2" IS NOT NULL AND
	"r"."Bool1" = @Bool1 AND
	"r"."Bool3" = @Bool3 AND
	"r"."Bool3" IS NOT NULL

BeforeExecute
-- DB2 DB2.LUW DB2LUW

BEGIN
	DECLARE CONTINUE HANDLER FOR SQLSTATE '42704' BEGIN END;
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3830TestTable"';
END

