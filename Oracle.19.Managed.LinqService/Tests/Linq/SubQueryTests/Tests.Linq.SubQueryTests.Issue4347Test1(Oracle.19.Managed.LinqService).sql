BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TransactionEntity"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "TransactionEntity"
		(
			"Id"      Raw(16)   NOT NULL,
			"ValidOn" timestamp NOT NULL,

			CONSTRAINT "PK_TransactionEntity" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "LineEntity"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE "LineEntity"
		(
			"Id"            Raw(16)         NOT NULL,
			"TransactionId" Raw(16)         NOT NULL,
			"Amount"        Decimal(28, 10) NOT NULL,
			"Currency"      VarChar(255)        NULL,

			CONSTRAINT "PK_LineEntity" PRIMARY KEY ("Id")
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	m_1."Id",
	d."Id",
	d."Amount",
	d."Currency"
FROM
	(
		SELECT DISTINCT
			x."Id"
		FROM
			"TransactionEntity" x
		WHERE
			EXISTS(
				SELECT
					1
				FROM
					(
						SELECT
							a_Lines."Currency"
						FROM
							"LineEntity" a_Lines
						WHERE
							x."Id" = a_Lines."TransactionId"
						INTERSECT
						SELECT
							t1."item" as "Currency"
						FROM
							(
								SELECT 'A' AS "item" FROM sys.dual
								UNION ALL
								SELECT 'B' FROM sys.dual) t1
					) t2
			)
	) m_1
		INNER JOIN "LineEntity" d ON m_1."Id" = d."TransactionId"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	x."Id",
	x."ValidOn"
FROM
	"TransactionEntity" x
WHERE
	EXISTS(
		SELECT
			1
		FROM
			(
				SELECT
					a_Lines."Currency"
				FROM
					"LineEntity" a_Lines
				WHERE
					x."Id" = a_Lines."TransactionId"
				INTERSECT
				SELECT
					t1."item" as "Currency"
				FROM
					(
						SELECT 'A' AS "item" FROM sys.dual
						UNION ALL
						SELECT 'B' FROM sys.dual) t1
			) t2
	)
ORDER BY
	x."ValidOn"

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "LineEntity"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "TransactionEntity"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

