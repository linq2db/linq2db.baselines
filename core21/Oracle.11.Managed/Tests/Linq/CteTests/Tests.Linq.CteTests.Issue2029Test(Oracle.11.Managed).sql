BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE NC_CODE
(
	HANDLE             VarChar(255)    NOT NULL,
	CHANGE_STAMP       Decimal(29, 10)     NULL,
	SITE               VarChar(255)        NULL,
	NC_CODE            VarChar(255)        NULL,
	DESCRIPTION        VarChar(255)        NULL,
	STATUS_BO          VarChar(255)        NULL,
	CREATED_DATE_TIME  timestamp           NULL,
	MODIFIED_DATE_TIME timestamp           NULL,
	NC_CATEGORY        VarChar(255)        NULL,
	DPMO_CATEGORY_BO   VarChar(255)        NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE NC_GROUP_MEMBER
(
	HANDLE               VarChar(255)    NOT NULL,
	NC_GROUP_BO          VarChar(255)        NULL,
	NC_CODE_OR_GROUP_GBO VarChar(255)        NULL,
	SEQUENCE             Decimal(29, 10)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE NC_GROUP_MEMBER';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE NC_CODE';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

