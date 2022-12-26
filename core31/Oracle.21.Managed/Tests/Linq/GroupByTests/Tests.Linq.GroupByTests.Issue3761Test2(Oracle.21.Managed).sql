BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3761Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

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
-- Oracle.21.Managed Oracle.Managed Oracle12
DECLARE @default_1 TimeStamp -- DateTime
SET     @default_1 = TIMESTAMP '0001-01-01 00:00:00.000000'
DECLARE @DATUM TimeStamp -- DateTime
SET     @DATUM = TIMESTAMP '2019-01-01 00:00:00.000000'

SELECT
	To_Number(To_Char(Nvl(n.DATUM, :default_1), 'YYYY')),
	To_Number(To_Char(Nvl(n.DATUM, :default_1), 'MM')),
	Sum(n.SKUPAJ)
FROM
	"Issue3761Table" n
WHERE
	n.DATUM < :DATUM
GROUP BY
	To_Number(To_Char(Nvl(n.DATUM, :default_1), 'YYYY')),
	To_Number(To_Char(Nvl(n.DATUM, :default_1), 'MM'))
UNION ALL
SELECT
	To_Number(To_Char(Nvl(n_1.DATUM, :default_1), 'YYYY')),
	To_Number(To_Char(Nvl(n_1.DATUM, :default_1), 'MM')),
	Sum(n_1.SKUPAJ)
FROM
	"Issue3761Table" n_1
WHERE
	n_1.DATUM >= :DATUM
GROUP BY
	To_Number(To_Char(Nvl(n_1.DATUM, :default_1), 'YYYY')),
	To_Number(To_Char(Nvl(n_1.DATUM, :default_1), 'MM'))

BeforeExecute
-- Oracle.21.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3761Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

