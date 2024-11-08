BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3830TestTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "Issue3830TestTable"
		(
			"Id"    Int     NOT NULL,
			"Bool1" Char(1) NOT NULL,
			"Bool2" Char(1)     NULL,
			"Bool3" Char(1)     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 1
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'Y'
DECLARE @Bool2 Char -- AnsiStringFixedLength
SET     @Bool2 = NULL
DECLARE @Bool3 Char -- AnsiStringFixedLength
SET     @Bool3 = NULL

INSERT INTO "Issue3830TestTable"
(
	"Id",
	"Bool1",
	"Bool2",
	"Bool3"
)
VALUES
(
	:Id,
	:Bool1,
	:Bool2,
	:Bool3
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 2
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'N'
DECLARE @Bool2 Char -- AnsiStringFixedLength
SET     @Bool2 = NULL
DECLARE @Bool3 Char(1) -- AnsiStringFixedLength
SET     @Bool3 = 'Y'

INSERT INTO "Issue3830TestTable"
(
	"Id",
	"Bool1",
	"Bool2",
	"Bool3"
)
VALUES
(
	:Id,
	:Bool1,
	:Bool2,
	:Bool3
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 3
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'N'
DECLARE @Bool2 Char(1) -- AnsiStringFixedLength
SET     @Bool2 = 'Y'
DECLARE @Bool3 Char -- AnsiStringFixedLength
SET     @Bool3 = NULL

INSERT INTO "Issue3830TestTable"
(
	"Id",
	"Bool1",
	"Bool2",
	"Bool3"
)
VALUES
(
	:Id,
	:Bool1,
	:Bool2,
	:Bool3
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Id Int32
SET     @Id = 4
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'Y'
DECLARE @Bool2 Char(1) -- AnsiStringFixedLength
SET     @Bool2 = 'N'
DECLARE @Bool3 Char(1) -- AnsiStringFixedLength
SET     @Bool3 = 'Y'

INSERT INTO "Issue3830TestTable"
(
	"Id",
	"Bool1",
	"Bool2",
	"Bool3"
)
VALUES
(
	:Id,
	:Bool1,
	:Bool2,
	:Bool3
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'Y'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = :Bool1 AND r."Bool2" IS NULL AND r."Bool3" IS NULL

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @true_value Char(1) -- AnsiStringFixedLength
SET     @true_value = 'Y'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = :true_value AND r."Bool2" IS NULL AND r."Bool3" IS NULL

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'Y'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	(r."Bool3" IS NULL OR r."Bool3" IS NULL) AND r."Bool1" = :Bool1 AND
	r."Bool2" IS NULL

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'Y'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool2" IS NULL AND r."Bool1" = :Bool1 AND r."Bool3" IS NULL

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'N'
DECLARE @Bool3 Char(1) -- AnsiStringFixedLength
SET     @Bool3 = 'Y'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = :Bool1 AND r."Bool2" IS NULL AND r."Bool3" = :Bool3

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @true_value Char(1) -- AnsiStringFixedLength
SET     @true_value = 'Y'
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'N'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool3" = :true_value AND r."Bool1" = :Bool1 AND
	r."Bool2" IS NULL

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @false_value Char(1) -- AnsiStringFixedLength
SET     @false_value = 'N'
DECLARE @Bool3 Char(1) -- AnsiStringFixedLength
SET     @Bool3 = 'Y'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = :false_value AND r."Bool2" IS NULL AND
	r."Bool3" = :Bool3

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'N'
DECLARE @Bool3 Char(1) -- AnsiStringFixedLength
SET     @Bool3 = 'Y'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool2" IS NULL AND r."Bool1" = :Bool1 AND r."Bool3" = :Bool3

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'N'
DECLARE @Bool2 Char(1) -- AnsiStringFixedLength
SET     @Bool2 = 'Y'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = :Bool1 AND r."Bool2" = :Bool2 AND r."Bool3" IS NULL

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @false_value Char(1) -- AnsiStringFixedLength
SET     @false_value = 'N'
DECLARE @Bool2 Char(1) -- AnsiStringFixedLength
SET     @Bool2 = 'Y'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = :false_value AND r."Bool2" = :Bool2 AND
	r."Bool3" IS NULL

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'N'
DECLARE @Bool2 Char(1) -- AnsiStringFixedLength
SET     @Bool2 = 'Y'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	(r."Bool3" IS NULL OR r."Bool3" IS NULL) AND r."Bool1" = :Bool1 AND
	r."Bool2" = :Bool2

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'N'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool2" IS NOT NULL AND r."Bool1" = :Bool1 AND r."Bool3" IS NULL

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'Y'
DECLARE @Bool2 Char(1) -- AnsiStringFixedLength
SET     @Bool2 = 'N'
DECLARE @Bool3 Char(1) -- AnsiStringFixedLength
SET     @Bool3 = 'Y'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = :Bool1 AND r."Bool2" = :Bool2 AND r."Bool3" = :Bool3

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @true_value Char(1) -- AnsiStringFixedLength
SET     @true_value = 'Y'
DECLARE @Bool2 Char(1) -- AnsiStringFixedLength
SET     @Bool2 = 'N'
DECLARE @Bool3 Char(1) -- AnsiStringFixedLength
SET     @Bool3 = 'Y'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = :true_value AND r."Bool2" = :Bool2 AND
	r."Bool3" = :Bool3

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @true_value Char(1) -- AnsiStringFixedLength
SET     @true_value = 'Y'
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'Y'
DECLARE @Bool2 Char(1) -- AnsiStringFixedLength
SET     @Bool2 = 'N'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool3" = :true_value AND r."Bool1" = :Bool1 AND
	r."Bool2" = :Bool2

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12
DECLARE @Bool1 Char(1) -- AnsiStringFixedLength
SET     @Bool1 = 'Y'
DECLARE @Bool3 Char(1) -- AnsiStringFixedLength
SET     @Bool3 = 'Y'

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool2" IS NOT NULL AND r."Bool1" = :Bool1 AND r."Bool3" = :Bool3

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3830TestTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

