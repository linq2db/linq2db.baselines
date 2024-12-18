BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3830TestTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

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
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT INTO "Issue3830TestTable"
(
	"Id",
	"Bool1",
	"Bool2",
	"Bool3"
)
VALUES
(
	1,
	'Y',
	NULL,
	NULL
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT INTO "Issue3830TestTable"
(
	"Id",
	"Bool1",
	"Bool2",
	"Bool3"
)
VALUES
(
	2,
	'N',
	NULL,
	'Y'
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT INTO "Issue3830TestTable"
(
	"Id",
	"Bool1",
	"Bool2",
	"Bool3"
)
VALUES
(
	3,
	'N',
	'Y',
	NULL
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

INSERT INTO "Issue3830TestTable"
(
	"Id",
	"Bool1",
	"Bool2",
	"Bool3"
)
VALUES
(
	4,
	'Y',
	'N',
	'Y'
)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = 'Y' AND r."Bool2" IS NULL AND r."Bool3" IS NULL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = 'Y' AND r."Bool2" IS NULL AND r."Bool3" IS NULL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	(r."Bool3" IS NULL OR r."Bool3" IS NULL) AND r."Bool1" = 'Y' AND
	r."Bool2" IS NULL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool2" IS NULL AND r."Bool1" = 'Y' AND r."Bool3" IS NULL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = 'N' AND
	r."Bool2" IS NULL AND
	r."Bool3" = 'Y' AND
	r."Bool3" IS NOT NULL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool3" = 'Y' AND r."Bool1" = 'N' AND r."Bool2" IS NULL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = 'N' AND
	r."Bool2" IS NULL AND
	r."Bool3" = 'Y' AND
	r."Bool3" IS NOT NULL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool2" IS NULL AND
	r."Bool1" = 'N' AND
	r."Bool3" = 'Y' AND
	r."Bool3" IS NOT NULL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = 'N' AND
	r."Bool2" = 'Y' AND
	r."Bool2" IS NOT NULL AND
	r."Bool3" IS NULL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = 'N' AND
	r."Bool2" = 'Y' AND
	r."Bool2" IS NOT NULL AND
	r."Bool3" IS NULL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	(r."Bool3" IS NULL OR r."Bool3" IS NULL) AND
	r."Bool1" = 'N' AND
	r."Bool2" = 'Y' AND
	r."Bool2" IS NOT NULL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool2" IS NOT NULL AND r."Bool1" = 'N' AND r."Bool3" IS NULL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = 'Y' AND
	r."Bool2" = 'N' AND
	r."Bool2" IS NOT NULL AND
	r."Bool3" = 'Y' AND
	r."Bool3" IS NOT NULL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool1" = 'Y' AND
	r."Bool2" = 'N' AND
	r."Bool2" IS NOT NULL AND
	r."Bool3" = 'Y' AND
	r."Bool3" IS NOT NULL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool3" = 'Y' AND
	r."Bool1" = 'Y' AND
	r."Bool2" = 'N' AND
	r."Bool2" IS NOT NULL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	r."Id",
	r."Bool1",
	r."Bool2",
	r."Bool3"
FROM
	"Issue3830TestTable" r
WHERE
	r."Bool2" IS NOT NULL AND
	r."Bool1" = 'Y' AND
	r."Bool3" = 'Y' AND
	r."Bool3" IS NOT NULL

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3830TestTable"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

