BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3761Table"';
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
		CREATE TABLE "Issue3761Table"
		(
			LETO     Int       NOT NULL,
			STEVILKA Int       NOT NULL,
			DATUM    timestamp     NULL,
			SKUPAJ   Decimal       NULL,

			CONSTRAINT "PK_Issue3761Table" PRIMARY KEY (LETO, STEVILKA)
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
DECLARE @default_1 TimeStamp -- DateTime
SET     @default_1 = TIMESTAMP '0001-01-01 00:00:00.000000'
DECLARE @DATUM TimeStamp -- DateTime
SET     @DATUM = TIMESTAMP '2019-01-01 00:00:00.000000'

SELECT
	t1."Key_1",
	t1."Key_2",
	Sum(t1.SKUPAJ)
FROM
	(
		SELECT
			To_Number(To_Char(Nvl(n.DATUM, :default_1), 'YYYY')) as "Key_1",
			To_Number(To_Char(Nvl(n.DATUM, :default_1), 'MM')) as "Key_2",
			n.SKUPAJ
		FROM
			"Issue3761Table" n
		WHERE
			n.DATUM < :DATUM
	) t1
GROUP BY
	t1."Key_1",
	t1."Key_2"

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3761Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

