BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12
DECLARE @sfcBo Varchar2(20) -- String
SET     @sfcBo = 'SFCBO:8110,C17C05016'

WITH "GetAllowedNcCode" ("NcCodeBo", "NcCode", "NcCodeDescription")
AS
(
	SELECT DISTINCT
		ncCode.HANDLE,
		ncCode.NC_CODE,
		ncCode.DESCRIPTION
	FROM
		NC_CODE ncCode
			INNER JOIN NC_GROUP_MEMBER ncGroupMember ON ncCode.HANDLE = ncGroupMember.NC_CODE_OR_GROUP_GBO
	WHERE
		ncGroupMember.NC_GROUP_BO = 'NCGroupBO:' || ncCode.SITE || ',CATAN_AUTO' OR
		ncGroupMember.NC_GROUP_BO IS NULL AND ncCode.SITE IS NULL OR
		ncGroupMember.NC_GROUP_BO = 'NCGroupBO:' || ncCode.SITE || ',CATAN_MAN' OR
		ncGroupMember.NC_GROUP_BO IS NULL AND ncCode.SITE IS NULL OR
		ncGroupMember.NC_GROUP_BO = 'NCGroupBO:' || ncCode.SITE || ',CATAN_ALL' OR
		ncGroupMember.NC_GROUP_BO IS NULL AND ncCode.SITE IS NULL
),
"FindProductionFailedNcData"
(
	"SfcBo",
	"CurrentOperationBo",
	"Site",
	"UserBo",
	"ShopOrderBo",
	"ResourceBo",
	"WorkCenterBo",
	"ItemBo",
	"NcCode_NcCodeBo",
	"NcCode_NcCode",
	"NcCode_NcCodeDescription",
	"Operation_1",
	"OperationBo",
	"OperationDescription",
	"Sfc",
	"NcDataBo",
	"PartitionDate"
)
AS
(
	SELECT
		sfc_1.HANDLE,
		'OperationBO:' || ncData.SITE || ',' || operationItem.OPERATION || ',#',
		ncData.SITE,
		ncData.USER_BO,
		sfc_1.SHOP_ORDER_BO,
		ncData.RESOURCE_BO,
		ncData.WORK_CENTER_BO,
		sfc_1.ITEM_BO,
		ncCodeItem."NcCodeBo",
		ncCodeItem."NcCode",
		ncCodeItem."NcCodeDescription",
		operationItem.OPERATION,
		ncData.OPERATION_BO,
		operationItem.DESCRIPTION,
		sfc_1.SFC,
		ncData.HANDLE,
		ncData.PARTITION_DATE
	FROM
		NC_DATA ncData
			INNER JOIN "GetAllowedNcCode" ncCodeItem ON ncCodeItem."NcCodeBo" = ncData.NC_CODE_BO
			INNER JOIN SFC sfc_1 ON ncData.NC_CONTEXT_GBO = sfc_1.HANDLE
			INNER JOIN OPERATION operationItem ON ncData.OPERATION_BO = operationItem.HANDLE
			INNER JOIN CUSTOM_FIELDS customFields ON (sfc_1.SHOP_ORDER_BO = customFields.HANDLE OR sfc_1.SHOP_ORDER_BO IS NULL AND customFields.HANDLE IS NULL) AND 'ORDER_TYPE' = customFields.ATTRIBUTE AND 'ZPRN' = customFields.VALUE
),
"FilterByTestOperation"
(
	"Parent_Site",
	"Parent_UserBo",
	"Parent_ShopOrderBo",
	"Parent_ResourceBo",
	"Parent_WorkCenterBo",
	"Parent_ItemBo",
	"RouterOperationBo",
	"Parent_SfcBo",
	"Parent_NcCode_NcCodeBo",
	"Parent_NcCode_NcCode",
	"Parent_NcCode_NcCodeDescription",
	"Parent_Operation",
	"Parent_OperationBo",
	"Parent_OperationDescription",
	"Parent_CurrentOperationBo",
	"Parent_Sfc",
	"Parent_NcDataBo",
	"Parent_PartitionDate",
	"SfcStepBo"
)
AS
(
	SELECT
		t1."Site",
		t1."UserBo",
		t1."ShopOrderBo",
		t1."ResourceBo",
		t1."WorkCenterBo",
		t1."ItemBo",
		routerOperation.HANDLE,
		t1."SfcBo",
		t1."NcCode_NcCodeBo",
		t1."NcCode_NcCode",
		t1."NcCode_NcCodeDescription",
		t1."Operation_1",
		t1."OperationBo",
		t1."OperationDescription",
		t1."CurrentOperationBo",
		t1."Sfc",
		t1."NcDataBo",
		t1."PartitionDate",
		sfcStep.HANDLE
	FROM
		"FindProductionFailedNcData" t1
			INNER JOIN SFC_ROUTING sfcRouting ON t1."SfcBo" = sfcRouting.SFC_BO
			INNER JOIN SFC_ROUTER sfcRouter ON sfcRouting.HANDLE = sfcRouter.SFC_ROUTING_BO
			INNER JOIN SFC_STEP sfcStep ON sfcRouter.HANDLE = sfcStep.SFC_ROUTER_BO
			INNER JOIN ROUTER_STEP routerStep ON (sfcRouter.ROUTER_BO = routerStep.ROUTER_BO OR sfcRouter.ROUTER_BO IS NULL AND routerStep.ROUTER_BO IS NULL) AND (sfcStep.STEP_ID = routerStep.STEP_ID OR sfcStep.STEP_ID IS NULL AND routerStep.STEP_ID IS NULL)
			INNER JOIN ROUTER_OPERATION routerOperation ON routerStep.HANDLE = routerOperation.ROUTER_STEP_BO AND (t1."CurrentOperationBo" = routerOperation.OPERATION_BO OR t1."CurrentOperationBo" IS NULL AND routerOperation.OPERATION_BO IS NULL)
			INNER JOIN CUSTOM_FIELDS customFields_1 ON routerOperation.HANDLE = customFields_1.HANDLE AND 'OPERATION_TYPE' = customFields_1.ATTRIBUTE AND 'T' = customFields_1.VALUE
			INNER JOIN ROUTER router_1 ON sfcRouter.ROUTER_BO = router_1.HANDLE
	WHERE
		sfcRouter.COMPLETED = 'false' AND sfcRouter.IN_USE = 'true' OR
		sfcRouter.COMPLETED = 'true' AND router_1.ROUTER_TYPE = 'U'
),
"GetAdditionalData"
(
	"Parent_Parent_SfcBo",
	"SiteDescription",
	"Parent_Parent_NcCode_NcCodeBo",
	"Parent_Parent_NcCode_NcCode",
	"Parent_Parent_NcCode_NcCodeDescription",
	"Parent_Parent_Operation",
	"Parent_Parent_OperationBo",
	"Parent_Parent_UserBo",
	"Parent_Parent_OperationDescription",
	"Parent_Parent_CurrentOperationBo",
	"Parent_Parent_Sfc",
	"Parent_Parent_ShopOrderBo",
	"Parent_Parent_ItemBo",
	"Parent_Parent_NcDataBo",
	"Parent_Parent_ResourceBo",
	"Parent_Parent_WorkCenterBo",
	"Parent_Parent_PartitionDate",
	"Parent_Parent_Site",
	"Parent_SfcStepBo",
	"Parent_RouterOperationBo",
	"ShopOrder",
	"Resrce",
	"ResrceDescription",
	"Workcenter",
	"WorkcenterDescription",
	"Line",
	"LineDescription",
	"Item_1",
	"ItemDescription",
	"ProductLine",
	"ProductGroup",
	"ItemGroup",
	"ItemGroupDescription",
	"TestCategory",
	"UserId",
	"BadgeNumber"
)
AS
(
	SELECT
		t2."Parent_SfcBo",
		site_1.DESCRIPTION,
		t2."Parent_NcCode_NcCodeBo",
		t2."Parent_NcCode_NcCode",
		t2."Parent_NcCode_NcCodeDescription",
		t2."Parent_Operation",
		t2."Parent_OperationBo",
		t2."Parent_UserBo",
		t2."Parent_OperationDescription",
		t2."Parent_CurrentOperationBo",
		t2."Parent_Sfc",
		t2."Parent_ShopOrderBo",
		t2."Parent_ItemBo",
		t2."Parent_NcDataBo",
		t2."Parent_ResourceBo",
		t2."Parent_WorkCenterBo",
		t2."Parent_PartitionDate",
		t2."Parent_Site",
		t2."SfcStepBo",
		t2."RouterOperationBo",
		shopOrder.SHOP_ORDER,
		resrce_1.RESRCE,
		resrce_1.DESCRIPTION,
		workCenter.WORK_CENTER,
		workCenter.DESCRIPTION,
		line.WORK_CENTER,
		line.DESCRIPTION,
		item_1.ITEM,
		item_1.DESCRIPTION,
		customField.VALUE,
		customField2.VALUE,
		itemGroup.ITEM_GROUP,
		itemGroup.DESCRIPTION,
		customField3.VALUE,
		usr_1.USER_ID,
		usr_1.BADGE_NUMBER
	FROM
		"FilterByTestOperation" t2
			LEFT JOIN SITE site_1 ON site_1.SITE = t2."Parent_Site" OR site_1.SITE IS NULL AND t2."Parent_Site" IS NULL
			LEFT JOIN USR usr_1 ON usr_1.HANDLE = t2."Parent_UserBo"
			LEFT JOIN SHOP_ORDER shopOrder ON shopOrder.HANDLE = t2."Parent_ShopOrderBo"
			LEFT JOIN RESRCE resrce_1 ON resrce_1.HANDLE = t2."Parent_ResourceBo"
			LEFT JOIN WORK_CENTER workCenter ON workCenter.HANDLE = t2."Parent_WorkCenterBo"
			LEFT JOIN WORK_CENTER_MEMBER workCenterMember ON workCenterMember.WORK_CENTER_OR_RESOURCE_GBO = t2."Parent_WorkCenterBo" OR workCenterMember.WORK_CENTER_OR_RESOURCE_GBO IS NULL AND t2."Parent_WorkCenterBo" IS NULL
			LEFT JOIN WORK_CENTER line ON line.HANDLE = workCenterMember.WORK_CENTER_BO
			LEFT JOIN ITEM item_1 ON item_1.HANDLE = t2."Parent_ItemBo"
			LEFT JOIN ITEM_GROUP_MEMBER itemGroupMember ON itemGroupMember.ITEM_BO = t2."Parent_ItemBo" OR itemGroupMember.ITEM_BO IS NULL AND t2."Parent_ItemBo" IS NULL
			LEFT JOIN ITEM_GROUP itemGroup ON itemGroup.HANDLE = itemGroupMember.ITEM_GROUP_BO
			LEFT JOIN CUSTOM_FIELDS customField ON (customField.HANDLE = t2."Parent_ItemBo" OR customField.HANDLE IS NULL AND t2."Parent_ItemBo" IS NULL) AND customField.ATTRIBUTE = 'PRODUCT_LINE'
			LEFT JOIN CUSTOM_FIELDS customField2 ON (customField2.HANDLE = t2."Parent_ItemBo" OR customField2.HANDLE IS NULL AND t2."Parent_ItemBo" IS NULL) AND customField2.ATTRIBUTE = 'SPART'
			LEFT JOIN CUSTOM_FIELDS customField3 ON customField3.HANDLE = t2."RouterOperationBo" AND customField3.ATTRIBUTE = 'TEST_CATEGORY'
)
SELECT
	item_2."SiteDescription",
	item_2."Parent_Parent_NcCode_NcCodeBo",
	item_2."Parent_Parent_NcCode_NcCode",
	item_2."Parent_Parent_NcCode_NcCodeDescription",
	item_2."Parent_Parent_Operation",
	item_2."Parent_Parent_OperationBo",
	item_2."Parent_Parent_UserBo",
	item_2."Parent_Parent_OperationDescription",
	item_2."Parent_Parent_CurrentOperationBo",
	item_2."Parent_Parent_SfcBo",
	item_2."Parent_Parent_Sfc",
	item_2."Parent_Parent_ShopOrderBo",
	item_2."Parent_Parent_ItemBo",
	item_2."Parent_Parent_NcDataBo",
	item_2."Parent_Parent_ResourceBo",
	item_2."Parent_Parent_WorkCenterBo",
	item_2."Parent_Parent_PartitionDate",
	item_2."Parent_Parent_Site",
	item_2."Parent_SfcStepBo",
	item_2."Parent_RouterOperationBo",
	item_2."ShopOrder",
	item_2."Resrce",
	item_2."ResrceDescription",
	item_2."Workcenter",
	item_2."WorkcenterDescription",
	item_2."Line",
	item_2."LineDescription",
	item_2."Item_1",
	item_2."ItemDescription",
	item_2."ProductLine",
	item_2."ProductGroup",
	item_2."ItemGroup",
	item_2."ItemGroupDescription",
	item_2."TestCategory",
	item_2."UserId",
	item_2."BadgeNumber"
FROM
	"GetAdditionalData" item_2
WHERE
	item_2."Parent_Parent_SfcBo" = :sfcBo

