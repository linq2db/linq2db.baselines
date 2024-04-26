﻿BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [RateEntry]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [RateEntry]
(
	[TI_PK]                                Guid          NOT NULL,
	[TI_LineOrder]                         SmallInt      NOT NULL,
	[TI_RateStartDate]                     DateTime2     NOT NULL,
	[TI_RateEndDate]                       DateTime2         NULL,
	[TI_RX_NKCurrency]                     NVarChar(255)     NULL,
	[TI_Frequency]                         INTEGER       NOT NULL,
	[TI_OH_Supplier]                       Guid              NULL,
	[TI_OH_TransportProvider]              Guid              NULL,
	[TI_OH_Consignor]                      Guid              NULL,
	[TI_OH_Consignee]                      Guid              NULL,
	[TI_OA_CartagePickupAddressOverride]   Guid              NULL,
	[TI_OA_CartageDeliveryAddressOverride] Guid              NULL,
	[TI_CartagePickupAddressPostCode]      NVarChar(255)     NULL,
	[TI_CartageDeliveryAddressPostCode]    NVarChar(255)     NULL,
	[TI_RS_NKServiceLevel_NI]              NVarChar(255)     NULL,
	[TI_OriginLRC]                         NVarChar(255)     NULL,
	[TI_DestinationLRC]                    NVarChar(255)     NULL,
	[TI_ViaLRC]                            NVarChar(255)     NULL,
	[TI_PageHeading]                       NVarChar(255)     NULL,
	[TI_PageOpeningText]                   NVarChar(255)     NULL,
	[TI_PageClosingText]                   NVarChar(255)     NULL,
	[TI_OH_AgentOverride]                  Guid              NULL,
	[TI_ParentID]                          Guid              NULL,
	[TI_QuotePageIncoTerm]                 NVarChar(255)     NULL,
	[TI_BuyersConsolRateMode]              NVarChar(255)     NULL,
	[TI_SystemCreateTimeUtc]               DateTime2         NULL,
	[TI_SystemCreateUser]                  NVarChar(255)     NULL,
	[TI_SystemLastEditTimeUtc]             DateTime2         NULL,
	[TI_SystemLastEditUser]                NVarChar(255)     NULL,
	[TI_TH]                                Guid          NOT NULL,
	[TI_RC]                                Guid              NULL,
	[TI_ContractNumber]                    NVarChar(255)     NULL,
	[TI_PL_NKCarrierServiceLevel]          NVarChar(255)     NULL,
	[TI_TZ_OriginZone]                     Guid              NULL,
	[TI_TZ_DestinationZone]                Guid              NULL,
	[TI_IsValid]                           Bit           NOT NULL,
	[TI_IsCrossTrade]                      Bit           NOT NULL,
	[TI_DataChecked]                       Bit           NOT NULL,
	[TI_MatchContainerRateClass]           Bit           NOT NULL,
	[TI_TransitTime]                       NVarChar(255)     NULL,
	[TI_FrequencyUnit]                     NVarChar(255)     NULL,
	[TI_Mode]                              NVarChar(255)     NULL,
	[TI_RH_NKCommodityCode]                NVarChar(255)     NULL,
	[TI_RateCategory]                      NVarChar(255)     NULL,
	[TI_FromID]                            Guid              NULL,
	[TI_FromTableCode]                     NVarChar(255)     NULL,
	[TI_ToId]                              Guid              NULL,
	[TI_ToTableCode]                       NVarChar(255)     NULL,
	[TI_OH_ControllingCustomer]            Guid              NULL,
	[TI_GC_Publisher]                      Guid          NOT NULL,
	[TI_IsTact]                            Bit           NOT NULL,
	[TI_ParentTableCode]                   NVarChar(255)     NULL,
	[TI_RateKey]                           INTEGER       NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [RateLines]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [RateLines]
(
	[TL_PK] Guid NOT NULL,
	[TL_TI] Guid NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [RateLineItem]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

CREATE TABLE IF NOT EXISTS [RateLineItem]
(
	[TM_PK]        Guid          NOT NULL,
	[TM_LineOrder] TinyInt       NOT NULL,
	[TM_Type]      NVarChar(255)     NULL,
	[TM_Value]     Decimal       NOT NULL,
	[TM_TL]        Guid          NOT NULL
)

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

WITH [rateCost]
(
	[RateEntry_TI_PK],
	[RateEntry_TI_LineOrder],
	[RateEntry_TI_RateStartDate],
	[RateEntry_TI_RateEndDate],
	[RateEntry_TI_RX_NKCurrency],
	[RateEntry_TI_Frequency],
	[RateEntry_TI_OH_Supplier],
	[RateEntry_TI_OH_TransportProvider],
	[RateEntry_TI_OH_Consignor],
	[RateEntry_TI_OH_Consignee],
	[RateEntry_TI_OA_CartagePickupAddressOverride],
	[RateEntry_TI_OA_CartageDeliveryAddressOverride],
	[RateEntry_TI_CartagePickupAddressPostCode],
	[RateEntry_TI_CartageDeliveryAddressPostCode],
	[RateEntry_TI_RS_NKServiceLevel_NI],
	[RateEntry_TI_OriginLRC],
	[RateEntry_TI_DestinationLRC],
	[RateEntry_TI_ViaLRC],
	[RateEntry_TI_PageHeading],
	[RateEntry_TI_PageOpeningText],
	[RateEntry_TI_PageClosingText],
	[RateEntry_TI_OH_AgentOverride],
	[RateEntry_TI_ParentID],
	[RateEntry_TI_QuotePageIncoTerm],
	[RateEntry_TI_BuyersConsolRateMode],
	[RateEntry_TI_SystemCreateTimeUtc],
	[RateEntry_TI_SystemCreateUser],
	[RateEntry_TI_SystemLastEditTimeUtc],
	[RateEntry_TI_SystemLastEditUser],
	[RateEntry_TI_TH],
	[RateEntry_TI_RC],
	[RateEntry_TI_ContractNumber],
	[RateEntry_TI_PL_NKCarrierServiceLevel],
	[RateEntry_TI_TZ_OriginZone],
	[RateEntry_TI_TZ_DestinationZone],
	[RateEntry_TI_IsValid],
	[RateEntry_TI_IsCrossTrade],
	[RateEntry_TI_DataChecked],
	[RateEntry_TI_MatchContainerRateClass],
	[RateEntry_TI_TransitTime],
	[RateEntry_TI_FrequencyUnit],
	[RateEntry_TI_Mode],
	[RateEntry_TI_RH_NKCommodityCode],
	[RateEntry_TI_RateCategory],
	[RateEntry_TI_FromID],
	[RateEntry_TI_FromTableCode],
	[RateEntry_TI_ToId],
	[RateEntry_TI_ToTableCode],
	[RateEntry_TI_OH_ControllingCustomer],
	[RateEntry_TI_GC_Publisher],
	[RateEntry_TI_IsTact],
	[RateEntry_TI_ParentTableCode],
	[RateEntry_TI_RateKey],
	[FlatRate],
	[MinRate],
	[VariableRate]
)
AS
(
	SELECT
		[s].[TI_PK],
		[s].[TI_LineOrder],
		[s].[TI_RateStartDate],
		[s].[TI_RateEndDate],
		[s].[TI_RX_NKCurrency],
		[s].[TI_Frequency],
		[s].[TI_OH_Supplier],
		[s].[TI_OH_TransportProvider],
		[s].[TI_OH_Consignor],
		[s].[TI_OH_Consignee],
		[s].[TI_OA_CartagePickupAddressOverride],
		[s].[TI_OA_CartageDeliveryAddressOverride],
		[s].[TI_CartagePickupAddressPostCode],
		[s].[TI_CartageDeliveryAddressPostCode],
		[s].[TI_RS_NKServiceLevel_NI],
		[s].[TI_OriginLRC],
		[s].[TI_DestinationLRC],
		[s].[TI_ViaLRC],
		[s].[TI_PageHeading],
		[s].[TI_PageOpeningText],
		[s].[TI_PageClosingText],
		[s].[TI_OH_AgentOverride],
		[s].[TI_ParentID],
		[s].[TI_QuotePageIncoTerm],
		[s].[TI_BuyersConsolRateMode],
		[s].[TI_SystemCreateTimeUtc],
		[s].[TI_SystemCreateUser],
		[s].[TI_SystemLastEditTimeUtc],
		[s].[TI_SystemLastEditUser],
		[s].[TI_TH],
		[s].[TI_RC],
		[s].[TI_ContractNumber],
		[s].[TI_PL_NKCarrierServiceLevel],
		[s].[TI_TZ_OriginZone],
		[s].[TI_TZ_DestinationZone],
		[s].[TI_IsValid],
		[s].[TI_IsCrossTrade],
		[s].[TI_DataChecked],
		[s].[TI_MatchContainerRateClass],
		[s].[TI_TransitTime],
		[s].[TI_FrequencyUnit],
		[s].[TI_Mode],
		[s].[TI_RH_NKCommodityCode],
		[s].[TI_RateCategory],
		[s].[TI_FromID],
		[s].[TI_FromTableCode],
		[s].[TI_ToId],
		[s].[TI_ToTableCode],
		[s].[TI_OH_ControllingCustomer],
		[s].[TI_GC_Publisher],
		[s].[TI_IsTact],
		[s].[TI_ParentTableCode],
		[s].[TI_RateKey],
		SUM(CASE
			WHEN [rateLineItem_1].[TM_Type] IN ('FLT', 'BAS') THEN [rateLineItem_1].[TM_Value]
			ELSE 0
		END),
		SUM(CASE
			WHEN [rateLineItem_1].[TM_Type] = 'MIN' THEN [rateLineItem_1].[TM_Value]
			ELSE 0
		END),
		SUM(CASE
			WHEN [rateLineItem_1].[TM_Type] = 'UNT' THEN [rateLineItem_1].[TM_Value]
			ELSE 0
		END)
	FROM
		[RateEntry] [s]
			LEFT JOIN [RateLines] [rateLine] ON [rateLine].[TL_TI] = [s].[TI_PK]
			LEFT JOIN [RateLineItem] [rateLineItem_1] ON ([rateLineItem_1].[TM_TL] = [rateLine].[TL_PK] OR [rateLineItem_1].[TM_TL] IS NULL AND [rateLine].[TL_PK] IS NULL)
	WHERE
		([s].[TI_RateEndDate] IS NULL OR strftime('%Y-%m-%d %H:%M:%f', [s].[TI_RateEndDate]) > strftime('%Y-%m-%d %H:%M:%f', CURRENT_TIMESTAMP)) AND
		[rateLineItem_1].[TM_Type] IN ('MIN', 'FLT', 'BAS', 'UNT')
	GROUP BY
		[s].[TI_PK],
		[s].[TI_LineOrder],
		[s].[TI_RateStartDate],
		[s].[TI_RateEndDate],
		[s].[TI_RX_NKCurrency],
		[s].[TI_Frequency],
		[s].[TI_OH_Supplier],
		[s].[TI_OH_TransportProvider],
		[s].[TI_OH_Consignor],
		[s].[TI_OH_Consignee],
		[s].[TI_OA_CartagePickupAddressOverride],
		[s].[TI_OA_CartageDeliveryAddressOverride],
		[s].[TI_CartagePickupAddressPostCode],
		[s].[TI_CartageDeliveryAddressPostCode],
		[s].[TI_RS_NKServiceLevel_NI],
		[s].[TI_OriginLRC],
		[s].[TI_DestinationLRC],
		[s].[TI_ViaLRC],
		[s].[TI_PageHeading],
		[s].[TI_PageOpeningText],
		[s].[TI_PageClosingText],
		[s].[TI_OH_AgentOverride],
		[s].[TI_ParentID],
		[s].[TI_QuotePageIncoTerm],
		[s].[TI_BuyersConsolRateMode],
		[s].[TI_SystemCreateTimeUtc],
		[s].[TI_SystemCreateUser],
		[s].[TI_SystemLastEditTimeUtc],
		[s].[TI_SystemLastEditUser],
		[s].[TI_TH],
		[s].[TI_RC],
		[s].[TI_ContractNumber],
		[s].[TI_PL_NKCarrierServiceLevel],
		[s].[TI_TZ_OriginZone],
		[s].[TI_TZ_DestinationZone],
		[s].[TI_IsValid],
		[s].[TI_IsCrossTrade],
		[s].[TI_DataChecked],
		[s].[TI_MatchContainerRateClass],
		[s].[TI_TransitTime],
		[s].[TI_FrequencyUnit],
		[s].[TI_Mode],
		[s].[TI_RH_NKCommodityCode],
		[s].[TI_RateCategory],
		[s].[TI_FromID],
		[s].[TI_FromTableCode],
		[s].[TI_ToId],
		[s].[TI_ToTableCode],
		[s].[TI_OH_ControllingCustomer],
		[s].[TI_GC_Publisher],
		[s].[TI_IsTact],
		[s].[TI_ParentTableCode],
		[s].[TI_RateKey]
)
SELECT
	[rateEntry_1].[TI_PK],
	[rateEntry_1].[TI_LineOrder],
	[rateEntry_1].[TI_RateStartDate],
	[rateEntry_1].[TI_RateEndDate],
	[rateEntry_1].[TI_RX_NKCurrency],
	[rateEntry_1].[TI_Frequency],
	[rateEntry_1].[TI_OH_Supplier],
	[rateEntry_1].[TI_OH_TransportProvider],
	[rateEntry_1].[TI_OH_Consignor],
	[rateEntry_1].[TI_OH_Consignee],
	[rateEntry_1].[TI_OA_CartagePickupAddressOverride],
	[rateEntry_1].[TI_OA_CartageDeliveryAddressOverride],
	[rateEntry_1].[TI_CartagePickupAddressPostCode],
	[rateEntry_1].[TI_CartageDeliveryAddressPostCode],
	[rateEntry_1].[TI_RS_NKServiceLevel_NI],
	[rateEntry_1].[TI_OriginLRC],
	[rateEntry_1].[TI_DestinationLRC],
	[rateEntry_1].[TI_ViaLRC],
	[rateEntry_1].[TI_PageHeading],
	[rateEntry_1].[TI_PageOpeningText],
	[rateEntry_1].[TI_PageClosingText],
	[rateEntry_1].[TI_OH_AgentOverride],
	[rateEntry_1].[TI_ParentID],
	[rateEntry_1].[TI_QuotePageIncoTerm],
	[rateEntry_1].[TI_BuyersConsolRateMode],
	[rateEntry_1].[TI_SystemCreateTimeUtc],
	[rateEntry_1].[TI_SystemCreateUser],
	[rateEntry_1].[TI_SystemLastEditTimeUtc],
	[rateEntry_1].[TI_SystemLastEditUser],
	[rateEntry_1].[TI_TH],
	[rateEntry_1].[TI_RC],
	[rateEntry_1].[TI_ContractNumber],
	[rateEntry_1].[TI_PL_NKCarrierServiceLevel],
	[rateEntry_1].[TI_TZ_OriginZone],
	[rateEntry_1].[TI_TZ_DestinationZone],
	[rateEntry_1].[TI_IsValid],
	[rateEntry_1].[TI_IsCrossTrade],
	[rateEntry_1].[TI_DataChecked],
	[rateEntry_1].[TI_MatchContainerRateClass],
	[rateEntry_1].[TI_TransitTime],
	[rateEntry_1].[TI_FrequencyUnit],
	[rateEntry_1].[TI_Mode],
	[rateEntry_1].[TI_RH_NKCommodityCode],
	[rateEntry_1].[TI_RateCategory],
	[rateEntry_1].[TI_FromID],
	[rateEntry_1].[TI_FromTableCode],
	[rateEntry_1].[TI_ToId],
	[rateEntry_1].[TI_ToTableCode],
	[rateEntry_1].[TI_OH_ControllingCustomer],
	[rateEntry_1].[TI_GC_Publisher],
	[rateEntry_1].[TI_IsTact],
	[rateEntry_1].[TI_ParentTableCode],
	[rateEntry_1].[TI_RateKey],
	[c_1].[RateEntry_TI_PK],
	[c_1].[RateEntry_TI_LineOrder],
	[c_1].[RateEntry_TI_RateStartDate],
	[c_1].[RateEntry_TI_RateEndDate],
	[c_1].[RateEntry_TI_RX_NKCurrency],
	[c_1].[RateEntry_TI_Frequency],
	[c_1].[RateEntry_TI_OH_Supplier],
	[c_1].[RateEntry_TI_OH_TransportProvider],
	[c_1].[RateEntry_TI_OH_Consignor],
	[c_1].[RateEntry_TI_OH_Consignee],
	[c_1].[RateEntry_TI_OA_CartagePickupAddressOverride],
	[c_1].[RateEntry_TI_OA_CartageDeliveryAddressOverride],
	[c_1].[RateEntry_TI_CartagePickupAddressPostCode],
	[c_1].[RateEntry_TI_CartageDeliveryAddressPostCode],
	[c_1].[RateEntry_TI_RS_NKServiceLevel_NI],
	[c_1].[RateEntry_TI_OriginLRC],
	[c_1].[RateEntry_TI_DestinationLRC],
	[c_1].[RateEntry_TI_ViaLRC],
	[c_1].[RateEntry_TI_PageHeading],
	[c_1].[RateEntry_TI_PageOpeningText],
	[c_1].[RateEntry_TI_PageClosingText],
	[c_1].[RateEntry_TI_OH_AgentOverride],
	[c_1].[RateEntry_TI_ParentID],
	[c_1].[RateEntry_TI_QuotePageIncoTerm],
	[c_1].[RateEntry_TI_BuyersConsolRateMode],
	[c_1].[RateEntry_TI_SystemCreateTimeUtc],
	[c_1].[RateEntry_TI_SystemCreateUser],
	[c_1].[RateEntry_TI_SystemLastEditTimeUtc],
	[c_1].[RateEntry_TI_SystemLastEditUser],
	[c_1].[RateEntry_TI_TH],
	[c_1].[RateEntry_TI_RC],
	[c_1].[RateEntry_TI_ContractNumber],
	[c_1].[RateEntry_TI_PL_NKCarrierServiceLevel],
	[c_1].[RateEntry_TI_TZ_OriginZone],
	[c_1].[RateEntry_TI_TZ_DestinationZone],
	[c_1].[RateEntry_TI_IsValid],
	[c_1].[RateEntry_TI_IsCrossTrade],
	[c_1].[RateEntry_TI_DataChecked],
	[c_1].[RateEntry_TI_MatchContainerRateClass],
	[c_1].[RateEntry_TI_TransitTime],
	[c_1].[RateEntry_TI_FrequencyUnit],
	[c_1].[RateEntry_TI_Mode],
	[c_1].[RateEntry_TI_RH_NKCommodityCode],
	[c_1].[RateEntry_TI_RateCategory],
	[c_1].[RateEntry_TI_FromID],
	[c_1].[RateEntry_TI_FromTableCode],
	[c_1].[RateEntry_TI_ToId],
	[c_1].[RateEntry_TI_ToTableCode],
	[c_1].[RateEntry_TI_OH_ControllingCustomer],
	[c_1].[RateEntry_TI_GC_Publisher],
	[c_1].[RateEntry_TI_IsTact],
	[c_1].[RateEntry_TI_ParentTableCode],
	[c_1].[RateEntry_TI_RateKey],
	[c_1].[FlatRate],
	[c_1].[MinRate],
	[c_1].[VariableRate]
FROM
	[RateEntry] [rateEntry_1]
		INNER JOIN [rateCost] [c_1] ON [c_1].[RateEntry_TI_PK] = [rateEntry_1].[TI_PK]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [RateLineItem]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [RateLines]

BeforeExecute
-- SQLite.Classic.MPM SQLite.Classic SQLite

DROP TABLE IF EXISTS [RateEntry]

