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
	t1."Year_1",
	t1."Month_1",
	Sum(t1.SKUPAJ)
FROM
	(
		SELECT
			To_Number(To_Char(Nvl(n.DATUM, :default_1), 'YYYY')) as "Year_1",
			To_Number(To_Char(Nvl(n.DATUM, :default_1), 'MM')) as "Month_1",
			n.SKUPAJ
		FROM
			"Issue3761Table" n
		WHERE
			n.DATUM < :DATUM
	) t1
GROUP BY
	t1."Year_1",
	t1."Month_1"
UNION ALL
SELECT
	t2."Year_1",
	t2."Month_1",
	Sum(t2.SKUPAJ)
FROM
	(
		SELECT
			To_Number(To_Char(Nvl(n_1.DATUM, :default_1), 'YYYY')) as "Year_1",
			To_Number(To_Char(Nvl(n_1.DATUM, :default_1), 'MM')) as "Month_1",
			n_1.SKUPAJ
		FROM
			"Issue3761Table" n_1
		WHERE
			n_1.DATUM >= :DATUM
	) t2
GROUP BY
	t2."Year_1",
	t2."Month_1"

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

