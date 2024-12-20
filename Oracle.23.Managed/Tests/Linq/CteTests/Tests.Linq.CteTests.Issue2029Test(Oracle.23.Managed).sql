BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE NC_CODE';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE NC_CODE
		(
			HANDLE             VarChar(255)    NOT NULL,
			CHANGE_STAMP       Decimal(28, 10)     NULL,
			SITE               VarChar(18)         NULL,
			NC_CODE            VarChar(48)         NULL,
			DESCRIPTION        VarChar(120)        NULL,
			STATUS_BO          VarChar(255)        NULL,
			CREATED_DATE_TIME  timestamp           NULL,
			MODIFIED_DATE_TIME timestamp           NULL,
			NC_CATEGORY        VarChar(255)        NULL,
			DPMO_CATEGORY_BO   VarChar(255)        NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE NC_GROUP_MEMBER';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE '
		CREATE TABLE NC_GROUP_MEMBER
		(
			HANDLE               VarChar(255)    NOT NULL,
			NC_GROUP_BO          VarChar(255)        NULL,
			NC_CODE_OR_GROUP_GBO VarChar(255)        NULL,
			SEQUENCE             Decimal(28, 10)     NULL
		)
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12
DECLARE @ncCodeBo Varchar2(30) -- String
SET     @ncCodeBo = 'NCCodeBO:8110,SETUP_OSCILLOSCO'

WITH "AllowedNcCode" ("NcCodeBo", "NcCode", "NcCodeDescription")
AS
(
	SELECT DISTINCT
		ncCode.HANDLE as "NcCodeBo",
		ncCode.NC_CODE as "NcCode",
		ncCode.DESCRIPTION as "NcCodeDescription"
	FROM
		NC_CODE ncCode
			INNER JOIN NC_GROUP_MEMBER ncGroupMember ON ncCode.HANDLE = ncGroupMember.NC_CODE_OR_GROUP_GBO
	WHERE
		ncGroupMember.NC_GROUP_BO = 'NCGroupBO:' || ncCode.SITE || ',CATAN_AUTO' OR
		ncGroupMember.NC_GROUP_BO IS NULL AND 'NCGroupBO:' || ncCode.SITE || ',CATAN_AUTO' IS NULL OR
		ncGroupMember.NC_GROUP_BO = 'NCGroupBO:' || ncCode.SITE || ',CATAN_MAN' OR
		ncGroupMember.NC_GROUP_BO IS NULL AND 'NCGroupBO:' || ncCode.SITE || ',CATAN_MAN' IS NULL OR
		ncGroupMember.NC_GROUP_BO = 'NCGroupBO:' || ncCode.SITE || ',CATAN_ALL' OR
		ncGroupMember.NC_GROUP_BO IS NULL AND 'NCGroupBO:' || ncCode.SITE || ',CATAN_ALL' IS NULL
)
SELECT
	item_1."NcCodeBo",
	item_1."NcCode",
	item_1."NcCodeDescription"
FROM
	"AllowedNcCode" item_1
WHERE
	item_1."NcCodeBo" = :ncCodeBo

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE NC_GROUP_MEMBER';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.23.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE NC_CODE';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

