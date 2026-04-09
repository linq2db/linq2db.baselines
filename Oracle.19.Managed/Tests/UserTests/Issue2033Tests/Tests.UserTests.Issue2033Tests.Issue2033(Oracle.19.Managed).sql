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
		ncGroupMember.NC_GROUP_BO = 'NCGroupBO:' || ncCode.SITE || ',CATAN_ALL'
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
		t2."Site",
		t2."UserBo",
		t2."ShopOrderBo",
		t2."ResourceBo",
		t2."WorkCenterBo",
		t2."ItemBo",
		routerOperation.HANDLE,
		t2."SfcBo",
		t2."NcCodeBo",
		t2."NcCode",
		t2."NcCodeDescription",
		t2."Operation_1",
		t2."OperationBo",
		t2."OperationDescription",
		t2."CurrentOperationBo",
		t2."Sfc",
		t2."NcDataBo",
		t2."PartitionDate",
		sfcStep.HANDLE
	FROM
		(
			SELECT
				t1."SfcBo",
				t1."CurrentOperationBo",
				t1."Site",
				t1."UserBo",
				t1."ShopOrderBo",
				t1."ResourceBo",
				t1."WorkCenterBo",
				t1."ItemBo",
				t1."NcCode_NcCodeBo" as "NcCodeBo",
				t1."NcCode_NcCode" as "NcCode",
				t1."NcCode_NcCodeDescription" as "NcCodeDescription",
				t1."Operation_1",
				t1."OperationBo",
				t1."OperationDescription",
				t1."Sfc",
				t1."NcDataBo",
				t1."PartitionDate"
			FROM
				"FindProductionFailedNcData" t1
		) t2
			INNER JOIN SFC_ROUTING sfcRouting ON t2."SfcBo" = sfcRouting.SFC_BO
			INNER JOIN SFC_ROUTER sfcRouter ON sfcRouting.HANDLE = sfcRouter.SFC_ROUTING_BO
			INNER JOIN SFC_STEP sfcStep ON sfcRouter.HANDLE = sfcStep.SFC_ROUTER_BO
			INNER JOIN ROUTER_STEP routerStep ON (sfcRouter.ROUTER_BO = routerStep.ROUTER_BO OR sfcRouter.ROUTER_BO IS NULL AND routerStep.ROUTER_BO IS NULL) AND (sfcStep.STEP_ID = routerStep.STEP_ID OR sfcStep.STEP_ID IS NULL AND routerStep.STEP_ID IS NULL)
			INNER JOIN ROUTER_OPERATION routerOperation ON routerStep.HANDLE = routerOperation.ROUTER_STEP_BO AND (t2."CurrentOperationBo" = routerOperation.OPERATION_BO OR t2."CurrentOperationBo" IS NULL AND routerOperation.OPERATION_BO IS NULL)
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
		t4."SfcBo",
		site_1.DESCRIPTION,
		t4."NcCodeBo",
		t4."NcCode",
		t4."NcCodeDescription",
		t4."Operation_1",
		t4."OperationBo",
		t4."UserBo",
		t4."OperationDescription",
		t4."CurrentOperationBo",
		t4."Sfc",
		t4."ShopOrderBo",
		t4."ItemBo",
		t4."NcDataBo",
		t4."ResourceBo",
		t4."WorkCenterBo",
		t4."PartitionDate",
		t4."Site",
		t4."SfcStepBo",
		t4."RouterOperationBo",
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
		(
			SELECT
				t3."RouterOperationBo",
				t3."Parent_SfcBo" as "SfcBo",
				t3."Parent_NcCode_NcCodeBo" as "NcCodeBo",
				t3."Parent_NcCode_NcCode" as "NcCode",
				t3."Parent_NcCode_NcCodeDescription" as "NcCodeDescription",
				t3."Parent_Operation" as "Operation_1",
				t3."Parent_OperationBo" as "OperationBo",
				t3."Parent_UserBo" as "UserBo",
				t3."Parent_OperationDescription" as "OperationDescription",
				t3."Parent_CurrentOperationBo" as "CurrentOperationBo",
				t3."Parent_Sfc" as "Sfc",
				t3."Parent_ShopOrderBo" as "ShopOrderBo",
				t3."Parent_ItemBo" as "ItemBo",
				t3."Parent_NcDataBo" as "NcDataBo",
				t3."Parent_ResourceBo" as "ResourceBo",
				t3."Parent_WorkCenterBo" as "WorkCenterBo",
				t3."Parent_PartitionDate" as "PartitionDate",
				t3."Parent_Site" as "Site",
				t3."SfcStepBo"
			FROM
				"FilterByTestOperation" t3
		) t4
			LEFT JOIN SITE site_1 ON site_1.SITE = t4."Site" OR site_1.SITE IS NULL AND t4."Site" IS NULL
			LEFT JOIN USR usr_1 ON usr_1.HANDLE = t4."UserBo"
			LEFT JOIN SHOP_ORDER shopOrder ON shopOrder.HANDLE = t4."ShopOrderBo"
			LEFT JOIN RESRCE resrce_1 ON resrce_1.HANDLE = t4."ResourceBo"
			LEFT JOIN WORK_CENTER workCenter ON workCenter.HANDLE = t4."WorkCenterBo"
			LEFT JOIN WORK_CENTER_MEMBER workCenterMember ON workCenterMember.WORK_CENTER_OR_RESOURCE_GBO = t4."WorkCenterBo" OR workCenterMember.WORK_CENTER_OR_RESOURCE_GBO IS NULL AND t4."WorkCenterBo" IS NULL
			LEFT JOIN WORK_CENTER line ON line.HANDLE = workCenterMember.WORK_CENTER_BO
			LEFT JOIN ITEM item_1 ON item_1.HANDLE = t4."ItemBo"
			LEFT JOIN ITEM_GROUP_MEMBER itemGroupMember ON itemGroupMember.ITEM_BO = t4."ItemBo" OR itemGroupMember.ITEM_BO IS NULL AND t4."ItemBo" IS NULL
			LEFT JOIN ITEM_GROUP itemGroup ON itemGroup.HANDLE = itemGroupMember.ITEM_GROUP_BO
			LEFT JOIN CUSTOM_FIELDS customField ON (customField.HANDLE = t4."ItemBo" OR customField.HANDLE IS NULL AND t4."ItemBo" IS NULL) AND customField.ATTRIBUTE = 'PRODUCT_LINE'
			LEFT JOIN CUSTOM_FIELDS customField2 ON (customField2.HANDLE = t4."ItemBo" OR customField2.HANDLE IS NULL AND t4."ItemBo" IS NULL) AND customField2.ATTRIBUTE = 'SPART'
			LEFT JOIN CUSTOM_FIELDS customField3 ON customField3.HANDLE = t4."RouterOperationBo" AND customField3.ATTRIBUTE = 'TEST_CATEGORY'
)
SELECT
	item_2."SiteDescription",
	item_2."NcCodeBo",
	item_2."NcCode",
	item_2."NcCodeDescription",
	item_2."Operation_1",
	item_2."OperationBo",
	item_2."UserBo",
	item_2."OperationDescription",
	item_2."CurrentOperationBo",
	item_2."SfcBo",
	item_2."Sfc",
	item_2."ShopOrderBo",
	item_2."ItemBo",
	item_2."NcDataBo",
	item_2."ResourceBo",
	item_2."WorkCenterBo",
	item_2."PartitionDate",
	item_2."Site",
	item_2."SfcStepBo",
	item_2."RouterOperationBo",
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
	(
		SELECT
			t5."Parent_Parent_SfcBo" as "SfcBo",
			t5."SiteDescription",
			t5."Parent_Parent_NcCode_NcCodeBo" as "NcCodeBo",
			t5."Parent_Parent_NcCode_NcCode" as "NcCode",
			t5."Parent_Parent_NcCode_NcCodeDescription" as "NcCodeDescription",
			t5."Parent_Parent_Operation" as "Operation_1",
			t5."Parent_Parent_OperationBo" as "OperationBo",
			t5."Parent_Parent_UserBo" as "UserBo",
			t5."Parent_Parent_OperationDescription" as "OperationDescription",
			t5."Parent_Parent_CurrentOperationBo" as "CurrentOperationBo",
			t5."Parent_Parent_Sfc" as "Sfc",
			t5."Parent_Parent_ShopOrderBo" as "ShopOrderBo",
			t5."Parent_Parent_ItemBo" as "ItemBo",
			t5."Parent_Parent_NcDataBo" as "NcDataBo",
			t5."Parent_Parent_ResourceBo" as "ResourceBo",
			t5."Parent_Parent_WorkCenterBo" as "WorkCenterBo",
			t5."Parent_Parent_PartitionDate" as "PartitionDate",
			t5."Parent_Parent_Site" as "Site",
			t5."Parent_SfcStepBo" as "SfcStepBo",
			t5."Parent_RouterOperationBo" as "RouterOperationBo",
			t5."ShopOrder",
			t5."Resrce",
			t5."ResrceDescription",
			t5."Workcenter",
			t5."WorkcenterDescription",
			t5."Line",
			t5."LineDescription",
			t5."Item_1",
			t5."ItemDescription",
			t5."ProductLine",
			t5."ProductGroup",
			t5."ItemGroup",
			t5."ItemGroupDescription",
			t5."TestCategory",
			t5."UserId",
			t5."BadgeNumber"
		FROM
			"GetAdditionalData" t5
	) item_2
WHERE
	item_2."SfcBo" = :sfcBo

