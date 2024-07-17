BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Item"';
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
		CREATE TABLE "Item"
		(
			"Id"   Int          NOT NULL,
			"Text" VarChar(255)     NULL,

			CONSTRAINT "PK_Item" PRIMARY KEY ("Id")
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

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ItemValue"';
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
		CREATE TABLE "ItemValue"
		(
			"Id"     Int     NOT NULL,
			"ItemId" Int     NOT NULL,
			"Value"  Decimal NOT NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
BeginTransaction(ReadCommitted)
BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id",
	d."Value"
FROM
	"Item" m_1
		INNER JOIN "ItemValue" d ON m_1."Id" = d."ItemId"

BeforeExecute
DisposeTransaction
BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."Text"
FROM
	"Item" x
ORDER BY
	Coalesce((
		SELECT
			SUM(a_Values."Value")
		FROM
			"ItemValue" a_Values
		WHERE
			x."Id" = a_Values."ItemId"
	), 0)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "ItemValue"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Item"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

