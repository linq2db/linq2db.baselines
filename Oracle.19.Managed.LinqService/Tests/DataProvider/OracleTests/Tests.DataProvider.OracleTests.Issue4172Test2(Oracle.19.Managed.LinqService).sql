BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE ISSUE4172TABLE';
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
		CREATE TABLE ISSUE4172TABLE
		(
			ROLE VarChar(1)     NULL
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
DECLARE @ROLE Varchar2 -- String
SET     @ROLE = ''

INSERT INTO ISSUE4172TABLE
(
	ROLE
)
VALUES
(
	:ROLE
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @ROLE Varchar2 -- String
SET     @ROLE = ''

INSERT INTO ISSUE4172TABLE
(
	ROLE
)
VALUES
(
	:ROLE
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @ROLE Varchar2(1) -- String
SET     @ROLE = '1'

INSERT INTO ISSUE4172TABLE
(
	ROLE
)
VALUES
(
	:ROLE
)

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

SELECT
	u.ROLE
FROM
	ISSUE4172TABLE u
WHERE
	u.ROLE IS NOT NULL OR u.ROLE IS NULL

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE ISSUE4172TABLE';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

