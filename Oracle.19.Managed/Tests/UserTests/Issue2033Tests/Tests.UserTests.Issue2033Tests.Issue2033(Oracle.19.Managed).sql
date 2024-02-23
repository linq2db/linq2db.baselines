﻿BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE NC_CODE';
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
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE NC_GROUP_MEMBER';
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
		CREATE TABLE NC_GROUP_MEMBER
		(
			HANDLE               VarChar(255) NOT NULL,
			NC_GROUP_BO          VarChar(255)     NULL,
			NC_CODE_OR_GROUP_GBO VarChar(255)     NULL,
			SEQUENCE             Decimal          NULL
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

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE SFC_ROUTING';
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
		CREATE TABLE SFC_ROUTING
		(
			HANDLE             VarChar(255) NOT NULL,
			CHANGE_STAMP       Decimal          NULL,
			SFC_BO             VarChar(255)     NULL,
			PARTITION_DATE     timestamp    NOT NULL,
			CREATED_DATE_TIME  timestamp        NULL,
			MODIFIED_DATE_TIME timestamp        NULL
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

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE SFC_ROUTER';
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
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE ROUTER_STEP';
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
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE ROUTER_OPERATION';
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
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE CUSTOM_FIELDS';
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
		CREATE TABLE CUSTOM_FIELDS
		(
			HANDLE             VarChar(255)     NULL,
			ATTRIBUTE          VarChar(255)     NULL,
			VALUE              VarChar(255)     NULL,
			CREATED_DATE_TIME  timestamp        NULL,
			MODIFIED_DATE_TIME timestamp        NULL
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

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE ROUTER';
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
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE SFC_STEP';
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
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE OPERATION';
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
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE SFC';
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
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE NC_DATA';
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
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE SITE';
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
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE USR';
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
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE SHOP_ORDER';
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
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE RESRCE';
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
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE WORK_CENTER';
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
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE WORK_CENTER_MEMBER';
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
		CREATE TABLE WORK_CENTER_MEMBER
		(
			HANDLE                      VarChar(255) NOT NULL,
			WORK_CENTER_BO              VarChar(255)     NULL,
			WORK_CENTER_OR_RESOURCE_GBO VarChar(255)     NULL,
			PRIMARY_WORK_CENTER         VarChar(255)     NULL,
			SEQUENCE                    Decimal          NULL
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

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE ITEM';
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
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE ITEM_GROUP_MEMBER';
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
		CREATE TABLE ITEM_GROUP_MEMBER
		(
			HANDLE        VarChar(255) NOT NULL,
			ITEM_GROUP_BO VarChar(255)     NULL,
			ITEM_BO       VarChar(255)     NULL
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

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE ITEM_GROUP';
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
	';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -955 THEN
			RAISE;
		END IF;
END;

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
		(ncGroupMember.NC_GROUP_BO = 'NCGroupBO:' || ncCode.SITE || ',CATAN_AUTO' OR ncGroupMember.NC_GROUP_BO = 'NCGroupBO:' || ncCode.SITE || ',CATAN_MAN' OR ncGroupMember.NC_GROUP_BO = 'NCGroupBO:' || ncCode.SITE || ',CATAN_ALL' OR ncGroupMember.NC_GROUP_BO IS NULL AND 'NCGroupBO:' || ncCode.SITE || ',CATAN_ALL' IS NULL OR ncGroupMember.NC_GROUP_BO IS NULL AND 'NCGroupBO:' || ncCode.SITE || ',CATAN_MAN' IS NULL OR ncGroupMember.NC_GROUP_BO IS NULL AND 'NCGroupBO:' || ncCode.SITE || ',CATAN_AUTO' IS NULL)
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
	"Operation",
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
		'OperationBO:' || t1.SITE || ',' || operationItem.OPERATION || ',#',
		t1.SITE,
		t1.USER_BO,
		sfc_1.SHOP_ORDER_BO,
		t1.RESOURCE_BO,
		t1.WORK_CENTER_BO,
		sfc_1.ITEM_BO,
		ncCodeItem."NcCodeBo",
		ncCodeItem."NcCode",
		ncCodeItem."NcCodeDescription",
		operationItem.OPERATION,
		t1.OPERATION_BO,
		operationItem.DESCRIPTION,
		sfc_1.SFC,
		t1.HANDLE,
		t1.PARTITION_DATE
	FROM
		NC_DATA t1
			INNER JOIN "GetAllowedNcCode" ncCodeItem ON ncCodeItem."NcCodeBo" = t1.NC_CODE_BO
			INNER JOIN SFC sfc_1 ON t1.NC_CONTEXT_GBO = sfc_1.HANDLE
			INNER JOIN OPERATION operationItem ON t1.OPERATION_BO = operationItem.HANDLE
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
		t2."NcCode_NcCodeBo",
		t2."NcCode_NcCode",
		t2."NcCode_NcCodeDescription",
		t2."Operation",
		t2."OperationBo",
		t2."OperationDescription",
		t2."CurrentOperationBo",
		t2."Sfc",
		t2."NcDataBo",
		t2."PartitionDate",
		sfcStep.HANDLE
	FROM
		"FindProductionFailedNcData" t2
			INNER JOIN SFC_ROUTING sfcRouting ON t2."SfcBo" = sfcRouting.SFC_BO
			INNER JOIN SFC_ROUTER sfcRouter ON sfcRouting.HANDLE = sfcRouter.SFC_ROUTING_BO
			INNER JOIN SFC_STEP sfcStep ON sfcRouter.HANDLE = sfcStep.SFC_ROUTER_BO
			INNER JOIN ROUTER_STEP routerStep ON (sfcRouter.ROUTER_BO = routerStep.ROUTER_BO OR sfcRouter.ROUTER_BO IS NULL AND routerStep.ROUTER_BO IS NULL) AND (sfcStep.STEP_ID = routerStep.STEP_ID OR sfcStep.STEP_ID IS NULL AND routerStep.STEP_ID IS NULL)
			INNER JOIN ROUTER_OPERATION routerOperation ON routerStep.HANDLE = routerOperation.ROUTER_STEP_BO AND (t2."CurrentOperationBo" = routerOperation.OPERATION_BO OR t2."CurrentOperationBo" IS NULL AND routerOperation.OPERATION_BO IS NULL)
			INNER JOIN CUSTOM_FIELDS customFields_1 ON routerOperation.HANDLE = customFields_1.HANDLE AND 'OPERATION_TYPE' = customFields_1.ATTRIBUTE AND 'T' = customFields_1.VALUE
			INNER JOIN ROUTER router_1 ON sfcRouter.ROUTER_BO = router_1.HANDLE
	WHERE
		(sfcRouter.COMPLETED = 'false' AND sfcRouter.IN_USE = 'true' OR sfcRouter.COMPLETED = 'true' AND router_1.ROUTER_TYPE = 'U')
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
	"Item",
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
		t3."Parent_SfcBo",
		site_1.DESCRIPTION,
		t3."Parent_NcCode_NcCodeBo",
		t3."Parent_NcCode_NcCode",
		t3."Parent_NcCode_NcCodeDescription",
		t3."Parent_Operation",
		t3."Parent_OperationBo",
		t3."Parent_UserBo",
		t3."Parent_OperationDescription",
		t3."Parent_CurrentOperationBo",
		t3."Parent_Sfc",
		t3."Parent_ShopOrderBo",
		t3."Parent_ItemBo",
		t3."Parent_NcDataBo",
		t3."Parent_ResourceBo",
		t3."Parent_WorkCenterBo",
		t3."Parent_PartitionDate",
		t3."Parent_Site",
		t3."SfcStepBo",
		t3."RouterOperationBo",
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
		"FilterByTestOperation" t3
			LEFT JOIN SITE site_1 ON (site_1.SITE = t3."Parent_Site" OR site_1.SITE IS NULL AND t3."Parent_Site" IS NULL)
			LEFT JOIN USR usr_1 ON (usr_1.HANDLE = t3."Parent_UserBo" OR usr_1.HANDLE IS NULL AND t3."Parent_UserBo" IS NULL)
			LEFT JOIN SHOP_ORDER shopOrder ON (shopOrder.HANDLE = t3."Parent_ShopOrderBo" OR shopOrder.HANDLE IS NULL AND t3."Parent_ShopOrderBo" IS NULL)
			LEFT JOIN RESRCE resrce_1 ON (resrce_1.HANDLE = t3."Parent_ResourceBo" OR resrce_1.HANDLE IS NULL AND t3."Parent_ResourceBo" IS NULL)
			LEFT JOIN WORK_CENTER workCenter ON (workCenter.HANDLE = t3."Parent_WorkCenterBo" OR workCenter.HANDLE IS NULL AND t3."Parent_WorkCenterBo" IS NULL)
			LEFT JOIN WORK_CENTER_MEMBER workCenterMember ON (workCenterMember.WORK_CENTER_OR_RESOURCE_GBO = t3."Parent_WorkCenterBo" OR workCenterMember.WORK_CENTER_OR_RESOURCE_GBO IS NULL AND t3."Parent_WorkCenterBo" IS NULL)
			LEFT JOIN WORK_CENTER line ON (line.HANDLE = workCenterMember.WORK_CENTER_BO OR line.HANDLE IS NULL AND workCenterMember.WORK_CENTER_BO IS NULL)
			LEFT JOIN ITEM item_1 ON (item_1.HANDLE = t3."Parent_ItemBo" OR item_1.HANDLE IS NULL AND t3."Parent_ItemBo" IS NULL)
			LEFT JOIN ITEM_GROUP_MEMBER itemGroupMember ON (itemGroupMember.ITEM_BO = t3."Parent_ItemBo" OR itemGroupMember.ITEM_BO IS NULL AND t3."Parent_ItemBo" IS NULL)
			LEFT JOIN ITEM_GROUP itemGroup ON (itemGroup.HANDLE = itemGroupMember.ITEM_GROUP_BO OR itemGroup.HANDLE IS NULL AND itemGroupMember.ITEM_GROUP_BO IS NULL)
			LEFT JOIN CUSTOM_FIELDS customField ON (customField.HANDLE = t3."Parent_ItemBo" OR customField.HANDLE IS NULL AND t3."Parent_ItemBo" IS NULL) AND customField.ATTRIBUTE = 'PRODUCT_LINE'
			LEFT JOIN CUSTOM_FIELDS customField2 ON (customField2.HANDLE = t3."Parent_ItemBo" OR customField2.HANDLE IS NULL AND t3."Parent_ItemBo" IS NULL) AND customField2.ATTRIBUTE = 'SPART'
			LEFT JOIN CUSTOM_FIELDS customField3 ON customField3.HANDLE = t3."RouterOperationBo" AND customField3.ATTRIBUTE = 'TEST_CATEGORY'
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
	item_2."Item",
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

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE ITEM_GROUP';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE ITEM_GROUP_MEMBER';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE ITEM';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE WORK_CENTER_MEMBER';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE WORK_CENTER';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE RESRCE';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE SHOP_ORDER';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE USR';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE SITE';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE NC_DATA';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE SFC';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE OPERATION';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE SFC_STEP';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE ROUTER';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE CUSTOM_FIELDS';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE ROUTER_OPERATION';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE ROUTER_STEP';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE SFC_ROUTER';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE SFC_ROUTING';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE NC_GROUP_MEMBER';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

BeforeExecute
-- Oracle.19.Managed Oracle.Managed Oracle12

BEGIN
	EXECUTE IMMEDIATE 'DROP TABLE NC_CODE';
EXCEPTION
	WHEN OTHERS THEN
		IF SQLCODE != -942 THEN
			RAISE;
		END IF;
END;

