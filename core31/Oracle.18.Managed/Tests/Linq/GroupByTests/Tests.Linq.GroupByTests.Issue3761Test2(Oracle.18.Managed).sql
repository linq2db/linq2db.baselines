﻿BeforeExecute
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
DECLARE @default_1 TimeStamp -- DateTime
SET     @default_1 = TIMESTAMP '0001-01-01 00:00:00.000000'
DECLARE @DATUM TimeStamp -- DateTime
SET     @DATUM = TIMESTAMP '2019-01-01 00:00:00.000000'

SELECT
	t2."Year_1",
	t2."Month_1",
	t2."Sum_1"
FROM
	(
		SELECT
			t1."Year_1",
			t1."Month_1",
			Sum(t1.SKUPAJ) as "Sum_1"
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
	) t2
UNION ALL
SELECT
	t4."Year_1",
	t4."Month_1",
	t4."Sum_1"
FROM
	(
		SELECT
			t3."Year_1",
			t3."Month_1",
			Sum(t3.SKUPAJ) as "Sum_1"
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
			) t3
		GROUP BY
			t3."Year_1",
			t3."Month_1"
	) t4

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

