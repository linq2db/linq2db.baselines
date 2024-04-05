BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3761Table"';
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
-- Oracle.18.Managed Oracle.Managed Oracle12
DECLARE @p TimeStamp -- DateTime
SET     @p = TIMESTAMP '0001-01-01 00:00:00.000000'
DECLARE @DATUM TimeStamp -- DateTime
SET     @DATUM = TIMESTAMP '2019-01-01 00:00:00.000000'
DECLARE @p_1 TimeStamp -- DateTime
SET     @p_1 = TIMESTAMP '0001-01-01 00:00:00.000000'

SELECT
	t1."Year_1",
	t1."Month_1",
	SUM(t1.SKUPAJ)
FROM
	(
		SELECT
			EXTRACT(YEAR FROM CASE
				WHEN n.DATUM IS NULL THEN :p
				ELSE n.DATUM
			END) as "Year_1",
			EXTRACT(MONTH FROM CASE
				WHEN n.DATUM IS NULL THEN :p
				ELSE n.DATUM
			END) as "Month_1",
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
	SUM(t2.SKUPAJ)
FROM
	(
		SELECT
			EXTRACT(YEAR FROM CASE
				WHEN n_1.DATUM IS NULL THEN :p_1
				ELSE n_1.DATUM
			END) as "Year_1",
			EXTRACT(MONTH FROM CASE
				WHEN n_1.DATUM IS NULL THEN :p_1
				ELSE n_1.DATUM
			END) as "Month_1",
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
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Issue3761Table"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

