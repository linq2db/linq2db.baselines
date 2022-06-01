﻿BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

CREATE TABLE NC_CODE
(
	HANDLE             VarChar(255) NOT NULL,
	CHANGE_STAMP       Decimal          NULL,
	SITE               VarChar(255)     NULL,
	NC_CODE            VarChar(255)     NULL,
	DESCRIPTION        VarChar(255)     NULL,
	STATUS_BO          VarChar(255)     NULL,
	CREATED_DATE_TIME  timestamp        NULL,
	MODIFIED_DATE_TIME timestamp        NULL,
	NC_CATEGORY        VarChar(255)     NULL,
	DPMO_CATEGORY_BO   VarChar(255)     NULL
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

CREATE TABLE NC_GROUP_MEMBER
(
	HANDLE               VarChar(255) NOT NULL,
	NC_GROUP_BO          VarChar(255)     NULL,
	NC_CODE_OR_GROUP_GBO VarChar(255)     NULL,
	SEQUENCE             Decimal          NULL
)

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE NC_GROUP_MEMBER';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.12.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE NC_CODE';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

