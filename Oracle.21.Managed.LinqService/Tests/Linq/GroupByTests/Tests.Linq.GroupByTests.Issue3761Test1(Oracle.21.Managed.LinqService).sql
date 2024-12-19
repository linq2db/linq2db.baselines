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
			LETO     Int             NOT NULL,
			STEVILKA Int             NOT NULL,
			DATUM    timestamp           NULL,
			SKUPAJ   Decimal(28, 10)     NULL,

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

SELECT
	t1."Year_1",
	t1."Month_1",
	SUM(t1.SKUPAJ)
FROM
	(
		SELECT
			EXTRACT(YEAR FROM CASE
				WHEN n.DATUM IS NOT NULL THEN n.DATUM
				ELSE TIMESTAMP '0001-01-01 00:00:00.000000'
			END) as "Year_1",
			EXTRACT(MONTH FROM CASE
				WHEN n.DATUM IS NOT NULL THEN n.DATUM
				ELSE TIMESTAMP '0001-01-01 00:00:00.000000'
			END) as "Month_1",
			n.SKUPAJ
		FROM
			"Issue3761Table" n
		WHERE
			n.DATUM < TIMESTAMP '2019-01-01 00:00:00.000000'
	) t1
GROUP BY
	t1."Year_1",
	t1."Month_1"

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

