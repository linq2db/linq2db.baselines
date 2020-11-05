BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

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
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE NC_GROUP_MEMBER
(
	HANDLE               VarChar(255) NOT NULL,
	NC_GROUP_BO          VarChar(255)     NULL,
	NC_CODE_OR_GROUP_GBO VarChar(255)     NULL,
	SEQUENCE             Decimal          NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE SFC_ROUTING
(
	HANDLE             VarChar(255) NOT NULL,
	CHANGE_STAMP       Decimal          NULL,
	SFC_BO             VarChar(255)     NULL,
	PARTITION_DATE     timestamp    NOT NULL,
	CREATED_DATE_TIME  timestamp        NULL,
	MODIFIED_DATE_TIME timestamp        NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE SFC_ROUTER
(
	HANDLE                    VarChar(255) NOT NULL,
	SFC_ROUTING_BO            VarChar(255)     NULL,
	ROUTER_BO                 VarChar(255)     NULL,
	SEQUENCE                  Decimal          NULL,
	IN_USE                    VarChar(255)     NULL,
	COMPLETED                 VarChar(255)     NULL,
	SUB_ROUTER                VarChar(255)     NULL,
	QTY                       Decimal          NULL,
	REWORKED_FROM_SFC_STEP_BO VarChar(255)     NULL,
	RETURN_TYPE               VarChar(255)     NULL,
	SUB_TYPE                  VarChar(255)     NULL,
	PARTITION_DATE            timestamp    NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE ROUTER_STEP
(
	HANDLE                  VarChar(255) NOT NULL,
	ROUTER_BO               VarChar(255)     NULL,
	STEP_ID                 VarChar(255)     NULL,
	DESCRIPTION             VarChar(255)     NULL,
	REWORK                  VarChar(255)     NULL,
	QUEUE_DECISION_TYPE     VarChar(255)     NULL,
	ROUTER_COMP_GBO         VarChar(255)     NULL,
	REPORTING_STEP          VarChar(255)     NULL,
	SEQUENCE                Decimal          NULL,
	REPORTING_CENTER_BO     VarChar(255)     NULL,
	TABULAR_STEP_TYPE       VarChar(255)     NULL,
	SCRAP_REPORTING_STEP    VarChar(255)     NULL,
	IS_LAST_REPORTING_STEP  VarChar(255)     NULL,
	ERP_SEQUENCE            VarChar(255)     NULL,
	ERP_CONTROL_KEY_BO      VarChar(255)     NULL,
	ERP_WORK_CENTER_BO      VarChar(255)     NULL,
	ERP_INSPECTION_COMPLETE VarChar(255)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE ROUTER_OPERATION
(
	HANDLE                   VarChar(255) NOT NULL,
	ROUTER_STEP_BO           VarChar(255)     NULL,
	OPERATION_BO             VarChar(255)     NULL,
	MAX_LOOP                 Decimal          NULL,
	REQUIRED_TIME_IN_PROCESS Decimal          NULL,
	STEP_TYPE                VarChar(255)     NULL,
	SPECIAL_INSTRUCTION      VarChar(255)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE CUSTOM_FIELDS
(
	HANDLE             VarChar(255)     NULL,
	ATTRIBUTE          VarChar(255)     NULL,
	VALUE              VarChar(255)     NULL,
	CREATED_DATE_TIME  timestamp        NULL,
	MODIFIED_DATE_TIME timestamp        NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE ROUTER
(
	HANDLE                VarChar(255) NOT NULL,
	CHANGE_STAMP          Decimal          NULL,
	SITE                  VarChar(255)     NULL,
	ROUTER                VarChar(255)     NULL,
	ROUTER_TYPE           VarChar(255)     NULL,
	DESCRIPTION           VarChar(255)     NULL,
	TEMPORARY_ROUTER      VarChar(255)     NULL,
	STATUS_BO             VarChar(255)     NULL,
	ENTRY_ROUTER_STEP_BO  VarChar(255)     NULL,
	COPIED_FROM_ROUTER_BO VarChar(255)     NULL,
	REVISION              VarChar(255)     NULL,
	CURRENT_REVISION      VarChar(255)     NULL,
	HAS_BEEN_RELEASED     VarChar(255)     NULL,
	EFF_START_DATE        timestamp        NULL,
	EFF_END_DATE          timestamp        NULL,
	CREATED_DATE_TIME     timestamp        NULL,
	MODIFIED_DATE_TIME    timestamp        NULL,
	GUI_REPRESENTATION    VarChar(255)     NULL,
	ORIGINAL_STATUS_BO    VarChar(255)     NULL,
	DISPOSITION_GROUP_BO  VarChar(255)     NULL,
	PREV_SITE             VarChar(255)     NULL,
	ORIGINAL_TRANSFER_KEY VarChar(255)     NULL,
	DISPLAY_TYPE          VarChar(255)     NULL,
	HOLD_ID               Decimal          NULL,
	SEND_AS_SHARED        VarChar(255)     NULL,
	SENT_TO_ERP           VarChar(255)     NULL,
	ERP_CHANGE_NUMBER     VarChar(255)     NULL,
	RELAXED_FLOW          VarChar(255)     NULL,
	BOM_BO                VarChar(255)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE SFC_STEP
(
	HANDLE                 VarChar(255) NOT NULL,
	SFC_ROUTER_BO          VarChar(255)     NULL,
	STEP_ID                VarChar(255)     NULL,
	OPERATION_BO           VarChar(255)     NULL,
	DONE                   VarChar(255)     NULL,
	BYPASSED               VarChar(255)     NULL,
	QTY_IN_QUEUE           Decimal          NULL,
	QTY_IN_WORK            Decimal          NULL,
	QTY_COMPLETED          Decimal          NULL,
	QTY_COMPLETE_PENDING   Decimal          NULL,
	QTY_REJECTED           Decimal          NULL,
	TIMES_PROCESSED        Decimal          NULL,
	MAX_LOOP               Decimal          NULL,
	USE_AS_REWORK          VarChar(255)     NULL,
	PREVIOUSLY_STARTED     VarChar(255)     NULL,
	LAST_WORK_CENTER_BO    VarChar(255)     NULL,
	PREVIOUS_STEP_ID       VarChar(255)     NULL,
	DATE_QUEUED            timestamp        NULL,
	REPORTING_STEP         VarChar(255)     NULL,
	STEP_SEQUENCE          Decimal          NULL,
	RESOURCE_OR_CENTER_GBO VarChar(255)     NULL,
	STATE                  VarChar(255)     NULL,
	REPORTING_CENTER_BO    VarChar(255)     NULL,
	PREVIOUS_RESOURCE_BO   VarChar(255)     NULL,
	MULTI_Q_SIGNOFF_NEEDED VarChar(255)     NULL,
	STEP_PULLED_INTO       VarChar(255)     NULL,
	PARTITION_DATE         timestamp    NOT NULL,
	LOCAL_REWORK           VarChar(255)     NULL,
	SPECIAL_INSTRUCTION    VarChar(255)     NULL,
	FUTURE_HOLD_COUNT      Decimal          NULL,
	ERP_SENT               VarChar(255)     NULL,
	SCRAP_REPORTING_STEP   VarChar(255)     NULL,
	ERP_TB_SENT            VarChar(255)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE OPERATION
(
	HANDLE                     VarChar(255) NOT NULL,
	CHANGE_STAMP               Decimal          NULL,
	SITE                       VarChar(255)     NULL,
	OPERATION                  VarChar(255)     NULL,
	DESCRIPTION                VarChar(255)     NULL,
	TYPE                       VarChar(255)     NULL,
	SPECIAL_ROUTER_BO          VarChar(255)     NULL,
	STATUS_BO                  VarChar(255)     NULL,
	RESOURCE_TYPE_BO           VarChar(255)     NULL,
	REVISION                   VarChar(255)     NULL,
	CURRENT_REVISION           VarChar(255)     NULL,
	EFF_START_DATE             timestamp        NULL,
	EFF_END_DATE               timestamp        NULL,
	CREATED_DATE_TIME          timestamp        NULL,
	MODIFIED_DATE_TIME         timestamp        NULL,
	PCA_DASHBOARD_MODE         VarChar(255)     NULL,
	DEFAULT_NC_CODE_BO         VarChar(255)     NULL,
	FAILURE_TRACKING_CONFIG_BO VarChar(255)     NULL,
	RESOURCE_BO                VarChar(255)     NULL,
	MAX_LOOP                   Decimal          NULL,
	REQUIRED_TIME_IN_PROCESS   Decimal          NULL,
	REPORTING_STEP             VarChar(255)     NULL,
	PREV_SITE                  VarChar(255)     NULL,
	ORIGINAL_TRANSFER_KEY      VarChar(255)     NULL,
	SPECIAL_INSTRUCTION        VarChar(255)     NULL,
	REPORTING_CENTER_BO        VarChar(255)     NULL,
	ERP_CONTROL_KEY_BO         VarChar(255)     NULL,
	ERP_WORK_CENTER_BO         VarChar(255)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE SFC
(
	HANDLE                  VarChar(255) NOT NULL,
	CHANGE_STAMP            Decimal          NULL,
	SITE                    VarChar(255)     NULL,
	SFC                     VarChar(255)     NULL,
	STATUS_BO               VarChar(255)     NULL,
	SHOP_ORDER_BO           VarChar(255)     NULL,
	QTY                     Decimal          NULL,
	QTY_DONE                Decimal          NULL,
	QTY_SCRAPPED            Decimal          NULL,
	QTY_HISTORICAL_MIN      Decimal          NULL,
	QTY_HISTORICAL_MAX      Decimal          NULL,
	ITEM_BO                 VarChar(255)     NULL,
	PRIORITY                Decimal          NULL,
	LOCATION                VarChar(255)     NULL,
	RMA_MAX_TIMES_PROCESSED Decimal          NULL,
	LCC_BO                  VarChar(255)     NULL,
	ORIGINAL_STATUS_BO      VarChar(255)     NULL,
	QTY_MULT_PERFORMED      VarChar(255)     NULL,
	ACTUAL_COMP_DATE        timestamp        NULL,
	PREV_SITE               VarChar(255)     NULL,
	ORIGINAL_TRANSFER_KEY   VarChar(255)     NULL,
	IMMEDIATE_ARCHIVE       VarChar(255)     NULL,
	TRANSFER_DATETIME       timestamp        NULL,
	TRANSFER_USER           VarChar(255)     NULL,
	SN_DONE                 VarChar(255)     NULL,
	CREATED_DATE_TIME       timestamp        NULL,
	MODIFIED_DATE_TIME      timestamp        NULL,
	PARTITION_DATE          timestamp    NOT NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE NC_DATA
(
	HANDLE                  VarChar(255) NOT NULL,
	CHANGE_STAMP            Decimal          NULL,
	NC_CONTEXT_GBO          VarChar(255)     NULL,
	USER_BO                 VarChar(255)     NULL,
	DATE_TIME               timestamp        NULL,
	SEQUENCE                Decimal          NULL,
	SITE                    VarChar(255)     NULL,
	PARENT_NC_DATA_BO       VarChar(255)     NULL,
	NC_STATE                VarChar(255)     NULL,
	NC_CODE_BO              VarChar(255)     NULL,
	NC_DATA_TYPE_BO         VarChar(255)     NULL,
	QTY                     Decimal          NULL,
	DEFECT_COUNT            Decimal          NULL,
	COMPONENT_BO            VarChar(255)     NULL,
	COMP_CONTEXT_GBO        VarChar(255)     NULL,
	REF_DES                 VarChar(255)     NULL,
	COMMENTS                VarChar(255)     NULL,
	ROUTER_BO               VarChar(255)     NULL,
	DISPOSITION_ROUTER_BO   VarChar(255)     NULL,
	STEP_ID                 VarChar(255)     NULL,
	OPERATION_BO            VarChar(255)     NULL,
	TIMES_PROCESSED         Decimal          NULL,
	RESOURCE_BO             VarChar(255)     NULL,
	WORK_CENTER_BO          VarChar(255)     NULL,
	ITEM_BO                 VarChar(255)     NULL,
	CLOSURE_REQUIRED        VarChar(255)     NULL,
	CLOSED_USER_BO          VarChar(255)     NULL,
	CLOSED_DATE_TIME        timestamp        NULL,
	CANCELLED_USER_BO       VarChar(255)     NULL,
	CANCELLED_DATE_TIME     timestamp        NULL,
	INCIDENT_DATE_TIME      timestamp        NULL,
	IDENTIFIER              VarChar(255)     NULL,
	FAILURE_ID              VarChar(255)     NULL,
	VERIFIED_STATE          VarChar(255)     NULL,
	CREATED_DATE_TIME       timestamp        NULL,
	MODIFIED_DATE_TIME      timestamp        NULL,
	NC_CATEGORY             VarChar(255)     NULL,
	VERIFIED_DATE_TIME      timestamp        NULL,
	LOCATION                VarChar(255)     NULL,
	REPORTING_CENTER_BO     VarChar(255)     NULL,
	INCIDENT_NUMBER_BO      VarChar(255)     NULL,
	DISPOSITION_DONE        VarChar(255)     NULL,
	ROOT_CAUSE_OPER_BO      VarChar(255)     NULL,
	TRANSFERRED_TO_DPMO     VarChar(255)     NULL,
	COMPONENT_SFC_BO        VarChar(255)     NULL,
	COMPONENT_SFC_ITEM_BO   VarChar(255)     NULL,
	DISPOSITION_FUNCTION_BO VarChar(255)     NULL,
	ASSEMBLY_INCIDENT_NUM   VarChar(255)     NULL,
	BATCH_INCIDENT_NUM      VarChar(255)     NULL,
	PREV_SITE               VarChar(255)     NULL,
	ORIGINAL_TRANSFER_KEY   VarChar(255)     NULL,
	ACTION_CODE             VarChar(255)     NULL,
	PARTITION_DATE          timestamp    NOT NULL,
	COPIED_FROM_NC_DATA_BO  VarChar(255)     NULL,
	TXN_ID                  VarChar(255)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE SITE
(
	HANDLE             VarChar(255) NOT NULL,
	CHANGE_STAMP       Decimal          NULL,
	SITE               VarChar(255)     NULL,
	DESCRIPTION        VarChar(255)     NULL,
	TYPE               VarChar(255)     NULL,
	IS_LOCAL           VarChar(255)     NULL,
	URL                VarChar(255)     NULL,
	SERVER             VarChar(255)     NULL,
	PORT               Decimal          NULL,
	LOGON_ID           VarChar(255)     NULL,
	PASSWORD           VarChar(255)     NULL,
	TIME_ZONE          VarChar(255)     NULL,
	SITE_LOCALE        VarChar(255)     NULL,
	CREATED_DATE_TIME  timestamp        NULL,
	MODIFIED_DATE_TIME timestamp        NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE USR
(
	HANDLE                   VarChar(255) NOT NULL,
	CHANGE_STAMP             Decimal          NULL,
	SITE                     VarChar(255)     NULL,
	USER_ID                  VarChar(255)     NULL,
	CURRENT_OPERATION_BO     VarChar(255)     NULL,
	CURRENT_RESOURCE_BO      VarChar(255)     NULL,
	CREATED_DATE_TIME        timestamp        NULL,
	MODIFIED_DATE_TIME       timestamp        NULL,
	BADGE_NUMBER             VarChar(255)     NULL,
	EMPLOYEE_NUMBER          VarChar(255)     NULL,
	HIRE_DATE                VarChar(255)     NULL,
	TERMINATION_DATE         VarChar(255)     NULL,
	ALLOW_CLOCK_IN_NON_PROD  VarChar(255)     NULL,
	ACTION_CLOCK_OUT_SFC     VarChar(255)     NULL,
	CLOCK_IN_OUT_RANGE       VarChar(255)     NULL,
	ALLOW_SUP_TIME_EDIT_APPR VarChar(255)     NULL,
	APPR_REQ_FOR_EXPORT      VarChar(255)     NULL,
	AUTO_CLOCK_OUT           VarChar(255)     NULL,
	CLOCK_IN_CONTROL         VarChar(255)     NULL,
	DEFAULT_WORK_CENTER_BO   VarChar(255)     NULL,
	ERP_PERSONNEL_NUMBER     VarChar(255)     NULL,
	ERP_USER                 VarChar(255)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE SHOP_ORDER
(
	HANDLE                      VarChar(255) NOT NULL,
	CHANGE_STAMP                Decimal          NULL,
	SITE                        VarChar(255)     NULL,
	SHOP_ORDER                  VarChar(255)     NULL,
	STATUS_BO                   VarChar(255)     NULL,
	PRIORITY                    Decimal          NULL,
	PLANNED_WORK_CENTER_BO      VarChar(255)     NULL,
	PLANNED_ITEM_BO             VarChar(255)     NULL,
	PLANNED_BOM_BO              VarChar(255)     NULL,
	PLANNED_ROUTER_BO           VarChar(255)     NULL,
	ITEM_BO                     VarChar(255)     NULL,
	BOM_BO                      VarChar(255)     NULL,
	ROUTER_BO                   VarChar(255)     NULL,
	QTY_TO_BUILD                Decimal          NULL,
	QTY_ORDERED                 Decimal          NULL,
	QTY_RELEASED                Decimal          NULL,
	RELEASED_DATE               timestamp        NULL,
	PLANNED_START_DATE          timestamp        NULL,
	PLANNED_COMP_DATE           timestamp        NULL,
	SCHEDULED_START_DATE        timestamp        NULL,
	SCHEDULED_COMP_DATE         timestamp        NULL,
	ACTUAL_START_DATE           timestamp        NULL,
	ACTUAL_COMP_DATE            timestamp        NULL,
	QTY_DONE                    Decimal          NULL,
	QTY_SCRAPPED                Decimal          NULL,
	CREATED_DATE_TIME           timestamp        NULL,
	MODIFIED_DATE_TIME          timestamp        NULL,
	CUSTOMER                    VarChar(255)     NULL,
	CUSTOMER_ORDER              VarChar(255)     NULL,
	RMA_SFC_DATA_TYPE_BO        VarChar(255)     NULL,
	RMA_SHOP_ORDER_DATA_TYPE_BO VarChar(255)     NULL,
	ORIGINAL_STATUS_BO          VarChar(255)     NULL,
	TRANSFER_SITE               VarChar(255)     NULL,
	TRANSFER_TYPE               VarChar(255)     NULL,
	LCC_BO                      VarChar(255)     NULL,
	SHOP_ORDER_TYPE_BO          VarChar(255)     NULL,
	HOLD_ID                     Decimal          NULL,
	END_UNIT_NUMBER             VarChar(255)     NULL,
	REQ_SERIAL_CHANGE           VarChar(255)     NULL,
	COLLECT_PARENT_SERIAL       VarChar(255)     NULL,
	BATCH_NUMBER                VarChar(255)     NULL,
	ERP_ORDER                   VarChar(255)     NULL,
	ERP_PRODUCTION_VERSION      VarChar(255)     NULL,
	ERP_UNIT_OF_MEASURE         VarChar(255)     NULL,
	PARTITION_DATE              timestamp    NOT NULL,
	INSPECTION_LOT              VarChar(255)     NULL,
	INSPECTION_GROUP_SIZE       Decimal          NULL,
	ERP_PUTAWAY_STORLOC         VarChar(255)     NULL,
	WAREHOUSE_NUMBER            VarChar(255)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE RESRCE
(
	HANDLE                 VarChar(255) NOT NULL,
	CHANGE_STAMP           Decimal          NULL,
	SITE                   VarChar(255)     NULL,
	RESRCE                 VarChar(255)     NULL,
	DESCRIPTION            VarChar(255)     NULL,
	STATUS_BO              VarChar(255)     NULL,
	PROCESS_RESOURCE       VarChar(255)     NULL,
	OPERATION_BO           VarChar(255)     NULL,
	VALID_FROM             timestamp        NULL,
	VALID_TO               timestamp        NULL,
	SETUP_STATE            VarChar(255)     NULL,
	SETUP_DESCRIPTION      VarChar(255)     NULL,
	CNC_MACHINE            VarChar(255)     NULL,
	PENDING_STATUS_BO      VarChar(255)     NULL,
	PENDING_REASON_CODE_BO VarChar(255)     NULL,
	PENDING_COMMENTS       VarChar(255)     NULL,
	CREATED_DATE_TIME      timestamp        NULL,
	MODIFIED_DATE_TIME     timestamp        NULL,
	ERP_PLANT_MAINT_ORDER  VarChar(255)     NULL,
	ERP_EQUIPMENT_NUMBER   VarChar(255)     NULL,
	ERP_INTERNAL_ID        Decimal          NULL,
	ERP_CAPACITY_CATEGORY  VarChar(255)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE WORK_CENTER
(
	HANDLE                 VarChar(255) NOT NULL,
	CHANGE_STAMP           Decimal          NULL,
	SITE                   VarChar(255)     NULL,
	WORK_CENTER            VarChar(255)     NULL,
	DESCRIPTION            VarChar(255)     NULL,
	ROUTER_BO              VarChar(255)     NULL,
	CAN_BE_RELEASED_TO     VarChar(255)     NULL,
	WC_CATEGORY            VarChar(255)     NULL,
	STATUS_BO              VarChar(255)     NULL,
	WC_TYPE                VarChar(255)     NULL,
	ASSIGNMENT_ENFORCEMENT VarChar(255)     NULL,
	CREATED_DATE_TIME      timestamp        NULL,
	MODIFIED_DATE_TIME     timestamp        NULL,
	ERP_INTERNAL_ID        Decimal          NULL,
	IS_ERP_WORK_CENTER     VarChar(255)     NULL,
	ERP_WORK_CENTER        VarChar(255)     NULL,
	ERP_CAPACITY_CATEGORY  VarChar(255)     NULL,
	STANDARD_VALUE_KEY_BO  VarChar(255)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE WORK_CENTER_MEMBER
(
	HANDLE                      VarChar(255) NOT NULL,
	WORK_CENTER_BO              VarChar(255)     NULL,
	WORK_CENTER_OR_RESOURCE_GBO VarChar(255)     NULL,
	PRIMARY_WORK_CENTER         VarChar(255)     NULL,
	SEQUENCE                    Decimal          NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE ITEM
(
	HANDLE                    VarChar(255) NOT NULL,
	CHANGE_STAMP              Decimal          NULL,
	SITE                      VarChar(255)     NULL,
	ITEM                      VarChar(255)     NULL,
	DESCRIPTION               VarChar(255)     NULL,
	STATUS_BO                 VarChar(255)     NULL,
	ITEM_TYPE                 VarChar(255)     NULL,
	EFF_START_SEQ             Decimal          NULL,
	EFF_END_SEQ               Decimal          NULL,
	LOT_SIZE                  Decimal          NULL,
	QUANTITY_RESTRICTION      VarChar(255)     NULL,
	ROUTER_BO                 VarChar(255)     NULL,
	BOM_BO                    VarChar(255)     NULL,
	COMPONENT_GROUP_BO        VarChar(255)     NULL,
	ITEM_GROUP_BO             VarChar(255)     NULL,
	LAST_RELEASED_DATE        timestamp        NULL,
	ASSY_DATA_TYPE_BO         VarChar(255)     NULL,
	PRE_ASSEMBLED             VarChar(255)     NULL,
	REVISION                  VarChar(255)     NULL,
	CURRENT_REVISION          VarChar(255)     NULL,
	EFF_START_DATE            timestamp        NULL,
	EFF_END_DATE              timestamp        NULL,
	SELECTOR_ACTIVITY_BO      VarChar(255)     NULL,
	SELECTOR_NOTE             VarChar(255)     NULL,
	ASSIGN_SERIAL_AT_RELEASE  VarChar(255)     NULL,
	CREATED_DATE_TIME         timestamp        NULL,
	MODIFIED_DATE_TIME        timestamp        NULL,
	DRAWING_NAME              VarChar(255)     NULL,
	MAXIMUM_USAGE             Decimal          NULL,
	USE_COMP_FROM_DRAWING     VarChar(255)     NULL,
	PANEL                     VarChar(255)     NULL,
	REMOVAL_ASSY_DATA_TYPE_BO VarChar(255)     NULL,
	INV_ASSY_DATA_TYPE_BO     VarChar(255)     NULL,
	ORIGINAL_STATUS_BO        VarChar(255)     NULL,
	QTY_MULTIPLIER            Decimal          NULL,
	CREATE_TRACKABLE_SFC      VarChar(255)     NULL,
	MASK_GROUP_BO             VarChar(255)     NULL,
	TRANSFER_ITEM_GROUP_BO    VarChar(255)     NULL,
	UNIT_OF_MEASURE           VarChar(255)     NULL,
	HOLD_ID                   Decimal          NULL,
	COLLECT_PARENT_SERIAL     VarChar(255)     NULL,
	REQ_SERIAL_CHANGE         VarChar(255)     NULL,
	IS_COLLECTOR              VarChar(255)     NULL,
	INC_BATCH_NUMBER          VarChar(255)     NULL,
	TIME_SENSITIVE            VarChar(255)     NULL,
	MAX_SHELF_LIFE            Decimal          NULL,
	MAX_SHELF_LIFE_UNITS      VarChar(255)     NULL,
	MAX_FLOOR_LIFE            Decimal          NULL,
	MAX_FLOOR_LIFE_UNITS      VarChar(255)     NULL,
	NOTES                     VarChar(255)     NULL,
	TB_COMP_TYPE              VarChar(255)     NULL,
	CONSUMPTION_TOL           Decimal          NULL,
	ERP_BACKFLUSHING          VarChar(255)     NULL,
	STORAGE_LOCATION_BO       VarChar(255)     NULL,
	ERP_PUTAWAY_STORLOC       VarChar(255)     NULL,
	USE_ORDER_ID_REL1         VarChar(255)     NULL,
	ERP_GTIN                  VarChar(255)     NULL,
	AIN_MODEL_EXTERNAL_ID     VarChar(255)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE ITEM_GROUP_MEMBER
(
	HANDLE        VarChar(255) NOT NULL,
	ITEM_GROUP_BO VarChar(255)     NULL,
	ITEM_BO       VarChar(255)     NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

CREATE TABLE ITEM_GROUP
(
	HANDLE             VarChar(255) NOT NULL,
	CHANGE_STAMP       Decimal          NULL,
	SITE               VarChar(255)     NULL,
	ITEM_GROUP         VarChar(255)     NULL,
	DESCRIPTION        VarChar(255)     NULL,
	ROUTER_BO          VarChar(255)     NULL,
	BOM_BO             VarChar(255)     NULL,
	MASK_GROUP_BO      VarChar(255)     NULL,
	CREATED_DATE_TIME  timestamp        NULL,
	MODIFIED_DATE_TIME timestamp        NULL
)

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11
DECLARE @sfcBo Varchar2(20) -- String
SET     @sfcBo = 'SFCBO:8110,C17C05016'

WITH GetAllowedNcCode (NcCodeBo, NcCode, NcCodeDescription)
AS
(
	SELECT DISTINCT
		ncCode_1.HANDLE,
		ncCode_1.NC_CODE,
		ncCode_1.DESCRIPTION
	FROM
		NC_CODE ncCode_1
			INNER JOIN NC_GROUP_MEMBER ncGroupMember ON ncCode_1.HANDLE = ncGroupMember.NC_CODE_OR_GROUP_GBO
	WHERE
		((ncGroupMember.NC_GROUP_BO = 'NCGroupBO:' || ncCode_1.SITE || ',CATAN_AUTO' OR ncGroupMember.NC_GROUP_BO = 'NCGroupBO:' || ncCode_1.SITE || ',CATAN_MAN') OR ncGroupMember.NC_GROUP_BO = 'NCGroupBO:' || ncCode_1.SITE || ',CATAN_ALL')
),
FindProductionFailedNcData
(
	SfcBo,
	CurrentOperationBo,
	Site,
	UserBo,
	ShopOrderBo,
	ResourceBo,
	WorkCenterBo,
	ItemBo,
	NcCodeBo,
	NcCode,
	NcCodeDescription,
	OperationColumn,
	OperationBo,
	Description,
	SfcColumn,
	Handle,
	PartitionDate
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
		ncCodeItem.NcCodeBo,
		ncCodeItem.NcCode,
		ncCodeItem.NcCodeDescription,
		operationItem.OPERATION,
		ncData.OPERATION_BO,
		operationItem.DESCRIPTION,
		sfc_1.SFC,
		ncData.HANDLE,
		ncData.PARTITION_DATE
	FROM
		NC_DATA ncData
			INNER JOIN GetAllowedNcCode ncCodeItem ON ncCodeItem.NcCodeBo = ncData.NC_CODE_BO
			INNER JOIN SFC sfc_1 ON ncData.NC_CONTEXT_GBO = sfc_1.HANDLE
			INNER JOIN OPERATION operationItem ON ncData.OPERATION_BO = operationItem.HANDLE
			INNER JOIN CUSTOM_FIELDS customFields ON (sfc_1.SHOP_ORDER_BO = customFields.HANDLE OR sfc_1.SHOP_ORDER_BO IS NULL AND customFields.HANDLE IS NULL) AND 'ORDER_TYPE' = customFields.ATTRIBUTE AND 'ZPRN' = customFields.VALUE
),
FilterByTestOperation
(
	Parent_Site,
	Parent_UserBo,
	Parent_ShopOrderBo,
	Parent_ResourceBo,
	Parent_WorkCenterBo,
	Parent_ItemBo,
	RouterOperationBo,
	Parent_SfcBo,
	NcCodeBo,
	NcCode,
	NcCodeDescription,
	OperationColumn,
	OperationBo,
	Description,
	CurrentOperationBo,
	SfcColumn,
	Handle,
	PartitionDate,
	Handle_1
)
AS
(
	SELECT
		inputItem.Site,
		inputItem.UserBo,
		inputItem.ShopOrderBo,
		inputItem.ResourceBo,
		inputItem.WorkCenterBo,
		inputItem.ItemBo,
		routerOperation.HANDLE,
		inputItem.SfcBo,
		inputItem.NcCodeBo,
		inputItem.NcCode,
		inputItem.NcCodeDescription,
		inputItem.OperationColumn,
		inputItem.OperationBo,
		inputItem.Description,
		inputItem.CurrentOperationBo,
		inputItem.SfcColumn,
		inputItem.Handle,
		inputItem.PartitionDate,
		sfcStep.HANDLE
	FROM
		FindProductionFailedNcData inputItem
			INNER JOIN SFC_ROUTING sfcRouting ON (inputItem.SfcBo = sfcRouting.SFC_BO OR inputItem.SfcBo IS NULL AND sfcRouting.SFC_BO IS NULL)
			INNER JOIN SFC_ROUTER sfcRouter ON sfcRouting.HANDLE = sfcRouter.SFC_ROUTING_BO
			INNER JOIN SFC_STEP sfcStep ON sfcRouter.HANDLE = sfcStep.SFC_ROUTER_BO
			INNER JOIN ROUTER_STEP routerStep ON (sfcRouter.ROUTER_BO = routerStep.ROUTER_BO OR sfcRouter.ROUTER_BO IS NULL AND routerStep.ROUTER_BO IS NULL) AND (sfcStep.STEP_ID = routerStep.STEP_ID OR sfcStep.STEP_ID IS NULL AND routerStep.STEP_ID IS NULL)
			INNER JOIN ROUTER_OPERATION routerOperation ON routerStep.HANDLE = routerOperation.ROUTER_STEP_BO AND (inputItem.CurrentOperationBo = routerOperation.OPERATION_BO OR inputItem.CurrentOperationBo IS NULL AND routerOperation.OPERATION_BO IS NULL)
			INNER JOIN CUSTOM_FIELDS customFields_1 ON routerOperation.HANDLE = customFields_1.HANDLE AND 'OPERATION_TYPE' = customFields_1.ATTRIBUTE AND 'T' = customFields_1.VALUE
			INNER JOIN ROUTER router_1 ON sfcRouter.ROUTER_BO = router_1.HANDLE
	WHERE
		(sfcRouter.COMPLETED = 'false' AND sfcRouter.IN_USE = 'true' OR sfcRouter.COMPLETED = 'true' AND router_1.ROUTER_TYPE = 'U')
),
GetAdditionalData
(
	Parent_Parent_SfcBo,
	Description,
	NcCodeBo,
	NcCode,
	NcCodeDescription,
	OperationColumn,
	OperationBo,
	Parent_UserBo,
	Description_1,
	CurrentOperationBo,
	SfcColumn,
	Parent_ShopOrderBo,
	Parent_ItemBo,
	Handle,
	Parent_ResourceBo,
	Parent_WorkCenterBo,
	PartitionDate,
	Parent_Site,
	Handle_1,
	RouterOperationBo,
	ShopOrderColumn,
	ResrceColumn,
	Description_2,
	WorkCenterColumn,
	Description_3,
	WorkCenterColumn_1,
	Description_4,
	ItemColumn,
	Description_5,
	Value,
	Value_1,
	ItemGroupColumn,
	Description_6,
	Value_2,
	UserId,
	BadgeNumber
)
AS
(
	SELECT
		inputItem_1.Parent_SfcBo,
		site_1.DESCRIPTION,
		inputItem_1.NcCodeBo,
		inputItem_1.NcCode,
		inputItem_1.NcCodeDescription,
		inputItem_1.OperationColumn,
		inputItem_1.OperationBo,
		inputItem_1.Parent_UserBo,
		inputItem_1.Description,
		inputItem_1.CurrentOperationBo,
		inputItem_1.SfcColumn,
		inputItem_1.Parent_ShopOrderBo,
		inputItem_1.Parent_ItemBo,
		inputItem_1.Handle,
		inputItem_1.Parent_ResourceBo,
		inputItem_1.Parent_WorkCenterBo,
		inputItem_1.PartitionDate,
		inputItem_1.Parent_Site,
		inputItem_1.Handle_1,
		inputItem_1.RouterOperationBo,
		shopOrder_1.SHOP_ORDER,
		resrce_1.RESRCE,
		resrce_1.DESCRIPTION,
		workCenter_1.WORK_CENTER,
		workCenter_1.DESCRIPTION,
		line_1.WORK_CENTER,
		line_1.DESCRIPTION,
		item_1.ITEM,
		item_1.DESCRIPTION,
		customField.VALUE,
		customField_1.VALUE,
		itemGroup_1.ITEM_GROUP,
		itemGroup_1.DESCRIPTION,
		customField_2.VALUE,
		usr_1.USER_ID,
		usr_1.BADGE_NUMBER
	FROM
		FilterByTestOperation inputItem_1
			LEFT JOIN SITE site_1 ON (site_1.SITE = inputItem_1.Parent_Site OR site_1.SITE IS NULL AND inputItem_1.Parent_Site IS NULL)
			LEFT JOIN USR usr_1 ON usr_1.HANDLE = inputItem_1.Parent_UserBo
			LEFT JOIN SHOP_ORDER shopOrder_1 ON shopOrder_1.HANDLE = inputItem_1.Parent_ShopOrderBo
			LEFT JOIN RESRCE resrce_1 ON resrce_1.HANDLE = inputItem_1.Parent_ResourceBo
			LEFT JOIN WORK_CENTER workCenter_1 ON workCenter_1.HANDLE = inputItem_1.Parent_WorkCenterBo
			LEFT JOIN WORK_CENTER_MEMBER workCenterMember ON (workCenterMember.WORK_CENTER_OR_RESOURCE_GBO = inputItem_1.Parent_WorkCenterBo OR workCenterMember.WORK_CENTER_OR_RESOURCE_GBO IS NULL AND inputItem_1.Parent_WorkCenterBo IS NULL)
			LEFT JOIN WORK_CENTER line_1 ON line_1.HANDLE = workCenterMember.WORK_CENTER_BO
			LEFT JOIN ITEM item_1 ON item_1.HANDLE = inputItem_1.Parent_ItemBo
			LEFT JOIN ITEM_GROUP_MEMBER itemGroupMember ON (itemGroupMember.ITEM_BO = inputItem_1.Parent_ItemBo OR itemGroupMember.ITEM_BO IS NULL AND inputItem_1.Parent_ItemBo IS NULL)
			LEFT JOIN ITEM_GROUP itemGroup_1 ON itemGroup_1.HANDLE = itemGroupMember.ITEM_GROUP_BO
			LEFT JOIN CUSTOM_FIELDS customField ON customField.ATTRIBUTE = 'PRODUCT_LINE' AND (customField.HANDLE = inputItem_1.Parent_ItemBo OR customField.HANDLE IS NULL AND inputItem_1.Parent_ItemBo IS NULL)
			LEFT JOIN CUSTOM_FIELDS customField_1 ON customField_1.ATTRIBUTE = 'SPART' AND (customField_1.HANDLE = inputItem_1.Parent_ItemBo OR customField_1.HANDLE IS NULL AND inputItem_1.Parent_ItemBo IS NULL)
			LEFT JOIN CUSTOM_FIELDS customField_2 ON customField_2.ATTRIBUTE = 'TEST_CATEGORY' AND (customField_2.HANDLE = inputItem_1.RouterOperationBo OR customField_2.HANDLE IS NULL AND inputItem_1.RouterOperationBo IS NULL)
)
SELECT
	item_2.Description,
	item_2.NcCodeBo,
	item_2.NcCode,
	item_2.NcCodeDescription,
	item_2.OperationColumn,
	item_2.OperationBo,
	item_2.Parent_UserBo,
	item_2.Description_1,
	item_2.CurrentOperationBo,
	item_2.Parent_Parent_SfcBo,
	item_2.SfcColumn,
	item_2.Parent_ShopOrderBo,
	item_2.Parent_ItemBo,
	item_2.Handle,
	item_2.Parent_ResourceBo,
	item_2.Parent_WorkCenterBo,
	item_2.PartitionDate,
	item_2.Parent_Site,
	item_2.Handle_1,
	item_2.RouterOperationBo,
	item_2.ShopOrderColumn,
	item_2.ResrceColumn,
	item_2.Description_2,
	item_2.WorkCenterColumn,
	item_2.Description_3,
	item_2.WorkCenterColumn_1,
	item_2.Description_4,
	item_2.ItemColumn,
	item_2.Description_5,
	item_2.Value,
	item_2.Value_1,
	item_2.ItemGroupColumn,
	item_2.Description_6,
	item_2.Value_2,
	item_2.UserId,
	item_2.BadgeNumber
FROM
	GetAdditionalData item_2
WHERE
	item_2.Parent_Parent_SfcBo = :sfcBo

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE ITEM_GROUP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE ITEM_GROUP_MEMBER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE ITEM

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE WORK_CENTER_MEMBER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE WORK_CENTER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE RESRCE

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE SHOP_ORDER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE USR

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE SITE

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE NC_DATA

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE SFC

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE OPERATION

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE SFC_STEP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE ROUTER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE CUSTOM_FIELDS

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE ROUTER_OPERATION

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE ROUTER_STEP

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE SFC_ROUTER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE SFC_ROUTING

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE NC_GROUP_MEMBER

BeforeExecute
-- Oracle.11.Managed Oracle.Managed Oracle11

DROP TABLE NC_CODE

