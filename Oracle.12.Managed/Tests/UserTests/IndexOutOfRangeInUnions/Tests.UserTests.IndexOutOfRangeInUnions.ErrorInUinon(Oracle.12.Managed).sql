BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE O1';
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
		CREATE TABLE O1
		(
			"DocEntry"    Int          NOT NULL,
			"BplId"       Int          NOT NULL,
			"ChaveAcesso" VarChar(255)     NULL,
			"DocStatus"   VarChar(255)     NULL
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

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE O2';
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
		CREATE TABLE O2
		(
			"DocEntry"    Int          NOT NULL,
			"BplId"       Int          NOT NULL,
			"ChaveAcesso" VarChar(255)     NULL,
			"DocStatus"   VarChar(255)     NULL
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

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE O3';
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
		CREATE TABLE O3
		(
			"DocEntry"    Int          NOT NULL,
			"BplId"       Int          NOT NULL,
			"ChaveAcesso" VarChar(255)     NULL,
			"DocStatus"   VarChar(255)     NULL
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

SELECT
	doSap."DocEntry",
	CASE
		WHEN doSap."DocStatus" = 'O' THEN 'Aberto'
		ELSE 'Fechado'
	END,
	CAST('Manual/Externo' AS VarChar(255))
FROM
	O1 doSap
UNION
SELECT
	doSap_1."DocEntry",
	CASE
		WHEN doSap_1."DocStatus" = 'O' THEN 'Aberto'
		ELSE 'Fechado'
	END,
	CAST('Manual/Externo' AS VarChar(255))
FROM
	O2 doSap_1
UNION
SELECT
	doSap_2."DocEntry",
	CASE
		WHEN doSap_2."DocStatus" = 'O' THEN 'Aberto'
		ELSE 'Fechado'
	END,
	CAST('Manual/Externo' AS VarChar(255))
FROM
	O3 doSap_2

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE O3';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE O2';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE O1';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

