BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NC_CODE')) THEN
		EXECUTE STATEMENT 'DROP TABLE NC_CODE';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NC_CODE')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE NC_CODE
			(
				HANDLE             VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,
				CHANGE_STAMP       Decimal(18, 10),
				SITE               VarChar(18) CHARACTER SET UNICODE_FSS,
				NC_CODE            VarChar(48) CHARACTER SET UNICODE_FSS,
				DESCRIPTION        VarChar(120) CHARACTER SET UNICODE_FSS,
				STATUS_BO          VarChar(255) CHARACTER SET UNICODE_FSS,
				CREATED_DATE_TIME  TimeStamp,
				MODIFIED_DATE_TIME TimeStamp,
				NC_CATEGORY        VarChar(255) CHARACTER SET UNICODE_FSS,
				DPMO_CATEGORY_BO   VarChar(255) CHARACTER SET UNICODE_FSS
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NC_GROUP_MEMBER')) THEN
		EXECUTE STATEMENT 'DROP TABLE NC_GROUP_MEMBER';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (NOT EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NC_GROUP_MEMBER')) THEN
		EXECUTE STATEMENT '
			CREATE TABLE NC_GROUP_MEMBER
			(
				HANDLE               VarChar(255) CHARACTER SET UNICODE_FSS NOT NULL,
				NC_GROUP_BO          VarChar(255) CHARACTER SET UNICODE_FSS,
				NC_CODE_OR_GROUP_GBO VarChar(255) CHARACTER SET UNICODE_FSS,
				SEQUENCE             Decimal(18, 10)
			)
		';
END

BeforeExecute
-- Firebird.5 Firebird4
DECLARE @ncCodeBo VarChar(30) -- String
SET     @ncCodeBo = 'NCCodeBO:8110,SETUP_OSCILLOSCO'

WITH "AllowedNcCode" ("NcCodeBo", "NcCode", "NcCodeDescription")
AS
(
	SELECT DISTINCT
		"ncCode".HANDLE as "NcCodeBo",
		"ncCode".NC_CODE as "NcCode",
		"ncCode".DESCRIPTION as "NcCodeDescription"
	FROM
		NC_CODE "ncCode"
			INNER JOIN NC_GROUP_MEMBER "ncGroupMember" ON "ncCode".HANDLE = "ncGroupMember".NC_CODE_OR_GROUP_GBO
	WHERE
		"ncGroupMember".NC_GROUP_BO = 'NCGroupBO:' || "ncCode".SITE || ',CATAN_AUTO' OR
		"ncGroupMember".NC_GROUP_BO IS NULL AND 'NCGroupBO:' || "ncCode".SITE || ',CATAN_AUTO' IS NULL OR
		"ncGroupMember".NC_GROUP_BO = 'NCGroupBO:' || "ncCode".SITE || ',CATAN_MAN' OR
		"ncGroupMember".NC_GROUP_BO IS NULL AND 'NCGroupBO:' || "ncCode".SITE || ',CATAN_MAN' IS NULL OR
		"ncGroupMember".NC_GROUP_BO = 'NCGroupBO:' || "ncCode".SITE || ',CATAN_ALL' OR
		"ncGroupMember".NC_GROUP_BO IS NULL AND 'NCGroupBO:' || "ncCode".SITE || ',CATAN_ALL' IS NULL
)
SELECT
	"item_1"."NcCodeBo",
	"item_1"."NcCode",
	"item_1"."NcCodeDescription"
FROM
	"AllowedNcCode" "item_1"
WHERE
	"item_1"."NcCodeBo" = @ncCodeBo

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NC_GROUP_MEMBER')) THEN
		EXECUTE STATEMENT 'DROP TABLE NC_GROUP_MEMBER';
END

BeforeExecute
-- Firebird.5 Firebird4

EXECUTE BLOCK AS BEGIN
	IF (EXISTS(SELECT 1 FROM rdb$relations WHERE rdb$relation_name = 'NC_CODE')) THEN
		EXECUTE STATEMENT 'DROP TABLE NC_CODE';
END

