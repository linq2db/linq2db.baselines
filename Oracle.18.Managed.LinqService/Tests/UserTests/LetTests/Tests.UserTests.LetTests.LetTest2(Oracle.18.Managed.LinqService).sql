BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table1"';
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
		CREATE TABLE "Table1"
		(
			"Field3" Int NOT NULL,
			"Field5" Int     NULL
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
	EXECUTE IMMEDIATE 'DROP TABLE "Table2"';
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
		CREATE TABLE "Table2"
		(
			"Field6" Int     NULL
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
	EXECUTE IMMEDIATE 'DROP TABLE "Table3"';
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
		CREATE TABLE "Table3"
		(
			"Field6" Int     NULL,
			"Field3" Int NOT NULL,
			"Field4" Int NOT NULL
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
	EXECUTE IMMEDIATE 'DROP TABLE "Table7"';
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
		CREATE TABLE "Table7"
		(
			"Field4" Int          NOT NULL,
			"Field8" VarChar(255)     NULL
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

SELECT
	t1."Field6"
FROM
	"Table2" t1
		LEFT JOIN "Table3" a_Ref3 ON t1."Field6" = a_Ref3."Field6" AND t1."Field6" IS NOT NULL AND a_Ref3."Field6" IS NOT NULL OR t1."Field6" IS NULL AND a_Ref3."Field6" IS NULL
		LEFT JOIN "Table1" a_Ref4 ON a_Ref3."Field3" = a_Ref4."Field3"
		LEFT JOIN "Table1" a_Ref1 ON a_Ref4."Field5" = a_Ref1."Field3" AND a_Ref4."Field5" IS NOT NULL
		LEFT JOIN "Table7" a_Ref5 ON a_Ref3."Field4" = a_Ref5."Field4"
		INNER JOIN "Table3" t2
			LEFT JOIN "Table7" a_Ref5_1 ON t2."Field4" = a_Ref5_1."Field4"
			INNER JOIN "Table2" t4 ON t2."Field6" = t4."Field6" AND t2."Field6" IS NOT NULL AND t4."Field6" IS NOT NULL OR t2."Field6" IS NULL AND t4."Field6" IS NULL
		ON a_Ref1."Field3" = t2."Field3" AND (a_Ref5."Field4" = a_Ref5_1."Field4" AND a_Ref5."Field4" IS NOT NULL AND a_Ref5_1."Field4" IS NOT NULL OR a_Ref5."Field4" IS NULL AND a_Ref5_1."Field4" IS NULL) AND (a_Ref5."Field8" = a_Ref5_1."Field8" AND a_Ref5."Field8" IS NOT NULL AND a_Ref5_1."Field8" IS NOT NULL OR a_Ref5."Field8" IS NULL AND a_Ref5_1."Field8" IS NULL)

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table7"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table3"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table2"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.18.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE "Table1"';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

